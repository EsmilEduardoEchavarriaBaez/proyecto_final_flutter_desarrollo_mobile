import 'dart:async';
import 'package:graphql/client.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/graphql_client.dart';
import 'dto/pokemon_dto.dart';
import 'pokemon_queries.dart';


class PokemonRemoteDataSource  {
  PokemonRemoteDataSource (this._client);
  final PokeGraphQLClient _client;


  Future<List <PokemonDto>> fetchPage({
    required int limit,
    required int offset,
  }) async {
    try {
      final result = await _client.client
          .query(QueryOptions(document: gql(pokemonPageQuery),
        variables: {'limit': limit, 'offset': offset},
        fetchPolicy: FetchPolicy.networkOnly,
      )).timeout(PokeGraphQLClient.timepout);

      if (result.hasException) throw _mapException(result.exception!);

      final rows = result.data?['pokemon_v2_pokemon'] as List<dynamic>? ?? [];
      return rows
          .map((e) => PokemonDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on TimeoutException {
      throw const TimeoutFailure();
    }
  }


  Failure _mapException(OperationException e)
  {
    final link =e.linkException;
    if(link  is HttpLinkServerException)
    {
      return link.statusCode ==429 ? const RateLimitFailure()
          : const ServerFailure();


    }
    if(link !=null) return  const  NetworkFailure();
    return  const  ServerFailure();



  }
}