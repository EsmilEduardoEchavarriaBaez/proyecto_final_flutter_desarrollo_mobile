import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

/// Endpoint GraphQL público de PokeAPI.
const String _pokeApiEndpoint = 'https://graphql.pokeapi.co/v1beta2';

/// Tiempo máximo de espera de cada petición.
const Duration _requestTimeout = Duration(seconds: 10);

/// Cliente GraphQL compartido por toda la app.
final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  return GraphQLClient(
    link: HttpLink(_pokeApiEndpoint),
    // El constructor exige una caché, pero no se usa: las consultas se hacen
    // con `FetchPolicy.noCache` porque la caché de la app es la base local.
    cache: GraphQLCache(),
    queryRequestTimeout: _requestTimeout,
  );
});
