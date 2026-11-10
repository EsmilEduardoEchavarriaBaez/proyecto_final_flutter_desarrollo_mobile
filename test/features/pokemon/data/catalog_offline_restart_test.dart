import 'dart:io';

import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/app_database.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/local/pokemon_local_datasource.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/sync/sync_coordinator.dart';

import '../../../helpers/fake_pokemon_remote_datasource.dart';

/// Reproduce el escenario «sin conexión después de reiniciar la aplicación»
/// usando un archivo SQLite real en lugar de una base en memoria.
void main() {
  test('el catálogo sigue disponible sin conexión tras reiniciar', () async {
    final directory = await Directory.systemTemp.createTemp('pokedex_test');
    final file = File('${directory.path}/pokedex.sqlite');
    addTearDown(() => directory.delete(recursive: true));

    // Primera ejecución, con conexión: se descarga el catálogo.
    final firstRun = AppDatabase(NativeDatabase(file));
    await PokemonRepositoryImpl(
      PokemonLocalDataSource(firstRun),
      FakeRemoteDataSource(),
      SyncCoordinator(),
    ).syncCatalog();

    // Se cierra la app.
    await firstRun.close();

    // Segunda ejecución, sin conexión: se abre el mismo archivo.
    final secondRun = AppDatabase(NativeDatabase(file));
    addTearDown(secondRun.close);
    final offlineRemote = FakeRemoteDataSource()..failFromOffset = 0;
    final repository = PokemonRepositoryImpl(
      PokemonLocalDataSource(secondRun),
      offlineRemote,
      SyncCoordinator(),
    );

    // La sincronización sigue vigente: ni siquiera intenta usar la red.
    await repository.syncCatalog();
    expect(offlineRemote.requestedOffsets, isEmpty);

    // Y el catálogo se lee completo de la base local.
    expect(await repository.watchPokemon().first, hasLength(120));
  });
}
