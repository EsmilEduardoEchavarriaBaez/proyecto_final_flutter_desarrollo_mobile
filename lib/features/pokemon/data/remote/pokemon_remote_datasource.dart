import 'dart:async';

import 'package:graphql/client.dart';

import '../../../../core/error/failures.dart';
import 'dto/pokemon_dto.dart';
import 'pokemon_queries.dart';

/// Acceso a PokeAPI por GraphQL.
///
/// Es la única clase de la app que hace peticiones de red del catálogo.
class PokemonRemoteDataSource {
  PokemonRemoteDataSource(this._client);

  final GraphQLClient _client;

  /// Pide una página del catálogo: [limit] Pokémon a partir de [offset].
  ///
  /// Lanza un [Failure] si la petición falla.
  Future<List<PokemonDto>> fetchPage({
    required int limit,
    required int offset,
  }) async {
    final result = await _client.query(
      QueryOptions(
        document: gql(pokemonPageQuery),
        variables: {'limit': limit, 'offset': offset},
        // Sin caché de la librería: lo descargado se guarda en la base local.
        fetchPolicy: FetchPolicy.noCache,
      ),
    );

    final exception = result.exception;
    if (exception != null) throw _toFailure(exception);

    final rows = result.data?['pokemon'] as List<dynamic>? ?? [];
    return rows
        .map((row) => PokemonDto.fromJson(row as Map<String, dynamic>))
        .toList();
  }

  /// Traduce el error técnico de la librería GraphQL a un [Failure].
  Failure _toFailure(OperationException exception) {
    final linkException = exception.linkException;

    // Se agotó el tiempo de espera configurado en el cliente.
    if (linkException?.originalException is TimeoutException) {
      return const TimeoutFailure();
    }

    // El servidor respondió, pero con un código HTTP de error.
    if (linkException is HttpLinkServerException) {
      return linkException.statusCode == 429
          ? const RateLimitFailure()
          : const ServerFailure();
    }

    // La petición nunca llegó al servidor: no hay conexión.
    if (linkException is ServerException) {
      return const NetworkFailure();
    }

    // Respuesta ilegible o errores devueltos por GraphQL.
    return const ServerFailure();
  }
}
