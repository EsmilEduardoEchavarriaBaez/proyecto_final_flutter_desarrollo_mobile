import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database_provider.dart';
import '../../core/network/graphql_client.dart';
import 'data/local/pokemon_local_datasource.dart';
import 'data/remote/pokemon_remote_datasource.dart';
import 'data/repositories/pokemon_repository_impl.dart';
import 'data/sync/sync_coordinator.dart';
import 'domain/repositories/pokemon_repository.dart';

/// Inyección de dependencias de la funcionalidad Pokémon.
///
/// Es el único lugar que conoce las clases concretas de la capa `data`. El
/// provider entrega el repositorio por su contrato ([PokemonRepository]), así
/// la capa `presentation` no sabe si los datos vienen de Drift o de GraphQL,
/// y en las pruebas se puede reemplazar por uno falso.
final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepositoryImpl(
    PokemonLocalDataSource(ref.watch(appDatabaseProvider)),
    PokemonRemoteDataSource(ref.watch(graphQLClientProvider)),
    SyncCoordinator(),
  );
});
