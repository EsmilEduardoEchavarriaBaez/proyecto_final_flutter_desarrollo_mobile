import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/error/failures.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/remote/pokemon_remote_datasource.dart';

/// Crea el datasource con un servidor HTTP simulado: [handler] decide qué
/// responde «PokeAPI» a cada petición.
PokemonRemoteDataSource dataSourceWith(
  Future<http.Response> Function(http.Request request) handler,
) {
  final client = GraphQLClient(
    link: HttpLink(
      'https://pokeapi.test/graphql',
      httpClient: MockClient(handler),
    ),
    cache: GraphQLCache(),
    queryRequestTimeout: const Duration(milliseconds: 100),
  );
  return PokemonRemoteDataSource(client);
}

http.Response jsonResponse(Map<String, dynamic> body, {int status = 200}) {
  return http.Response(
    jsonEncode(body),
    status,
    headers: {'content-type': 'application/json'},
  );
}

void main() {
  test('envía limit y offset, y convierte la respuesta en DTOs', () async {
    late Map<String, dynamic> sentVariables;
    final dataSource = dataSourceWith((request) async {
      final body = jsonDecode(request.body) as Map<String, dynamic>;
      sentVariables = body['variables'] as Map<String, dynamic>;
      return jsonResponse({
        'data': {
          'pokemon': [
            {
              'id': 1,
              'name': 'bulbasaur',
              'pokemon_species_id': 1,
              'pokemontypes': [
                {
                  'type': {'name': 'grass'},
                },
              ],
              'pokemonsprites': <dynamic>[],
            },
          ],
        },
      });
    });

    final page = await dataSource.fetchPage(limit: 50, offset: 100);

    expect(sentVariables, {'limit': 50, 'offset': 100});
    expect(page.single.name, 'bulbasaur');
    expect(page.single.types, ['grass']);
  });

  test('sin conexión lanza NetworkFailure', () {
    final dataSource = dataSourceWith(
      (request) async => throw const SocketException('Failed host lookup'),
    );

    expect(
      dataSource.fetchPage(limit: 50, offset: 0),
      throwsA(isA<NetworkFailure>()),
    );
  });

  test('si el servidor no responde a tiempo lanza TimeoutFailure', () {
    final dataSource = dataSourceWith((request) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      return jsonResponse({'data': <String, dynamic>{}});
    });

    expect(
      dataSource.fetchPage(limit: 50, offset: 0),
      throwsA(isA<TimeoutFailure>()),
    );
  });

  test('HTTP 429 lanza RateLimitFailure', () {
    final dataSource = dataSourceWith(
      (request) async => jsonResponse({'error': 'too many'}, status: 429),
    );

    expect(
      dataSource.fetchPage(limit: 50, offset: 0),
      throwsA(isA<RateLimitFailure>()),
    );
  });

  test('HTTP 500 lanza ServerFailure', () {
    final dataSource = dataSourceWith(
      (request) async => jsonResponse({'error': 'boom'}, status: 500),
    );

    expect(
      dataSource.fetchPage(limit: 50, offset: 0),
      throwsA(isA<ServerFailure>()),
    );
  });

  test('un error de GraphQL (campo inexistente) lanza ServerFailure', () {
    final dataSource = dataSourceWith(
      (request) async => jsonResponse({
        'errors': [
          {
            'message':
                "field 'pokemon_v2_pokemon' not found in type: 'query_root'",
          },
        ],
      }),
    );

    expect(
      dataSource.fetchPage(limit: 50, offset: 0),
      throwsA(isA<ServerFailure>()),
    );
  });
}
