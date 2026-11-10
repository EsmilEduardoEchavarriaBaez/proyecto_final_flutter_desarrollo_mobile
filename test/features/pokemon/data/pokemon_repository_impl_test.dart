import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/app_database.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/tables/sync_metadata_table.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/error/failures.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/local/pokemon_local_datasource.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/sync/sync_coordinator.dart';

import '../../../helpers/fake_pokemon_remote_datasource.dart';

void main() {
  const resourceKey = 'pokemon_catalog';

  late AppDatabase db;
  late PokemonLocalDataSource local;
  late FakeRemoteDataSource remote;
  late PokemonRepositoryImpl repository;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
    local = PokemonLocalDataSource(db);
    remote = FakeRemoteDataSource();
    repository = PokemonRepositoryImpl(local, remote, SyncCoordinator());
  });

  tearDown(() => db.close());

  group('sincronización', () {
    test('descarga todas las páginas y las guarda en la base local', () async {
      await repository.syncCatalog();

      final pokemon = await repository.watchPokemon().first;
      expect(pokemon, hasLength(120));
      // 120 Pokémon en páginas de 50: tres peticiones.
      expect(remote.requestedOffsets, [0, 50, 100]);
    });

    test('al terminar registra la sincronización como completada', () async {
      await repository.syncCatalog();

      final metadata = await local.getSyncMetadata(resourceKey);
      expect(metadata!.status, SyncStatus.completed);
      expect(metadata.nextOffset, 0);
      expect(metadata.lastSuccessAt, isNotNull);
    });

    test('volver a sincronizar no duplica Pokémon', () async {
      await repository.syncCatalog();
      await repository.syncCatalog(force: true);

      final pokemon = await repository.watchPokemon().first;
      expect(pokemon, hasLength(120));
    });

    test(
      'no descarga de nuevo si la última sincronización sigue vigente',
      () async {
        await repository.syncCatalog();
        remote.requestedOffsets.clear();

        await repository.syncCatalog();

        expect(remote.requestedOffsets, isEmpty);
      },
    );

    test(
      'descarga de nuevo si la última sincronización ya es antigua',
      () async {
        await local.saveSyncMetadata(
          resourceKey: resourceKey,
          status: SyncStatus.completed,
          nextOffset: 0,
          lastSuccessAt: DateTime.now().subtract(const Duration(days: 2)),
        );

        await repository.syncCatalog();

        expect(remote.requestedOffsets, [0, 50, 100]);
      },
    );

    test('con force descarga aunque los datos sigan vigentes', () async {
      await repository.syncCatalog();
      remote.requestedOffsets.clear();

      await repository.syncCatalog(force: true);

      expect(remote.requestedOffsets, [0, 50, 100]);
    });
  });

  group('fallos de red', () {
    test(
      'si falla a mitad, lanza el Failure y conserva lo descargado',
      () async {
        remote.failFromOffset = 50;

        await expectLater(
          repository.syncCatalog(),
          throwsA(isA<NetworkFailure>()),
        );

        final pokemon = await repository.watchPokemon().first;
        expect(pokemon, hasLength(50));

        final metadata = await local.getSyncMetadata(resourceKey);
        expect(metadata!.status, SyncStatus.failed);
        expect(metadata.nextOffset, 50);
      },
    );

    test('al reintentar reanuda desde la página donde se quedó', () async {
      remote.failFromOffset = 50;
      await expectLater(repository.syncCatalog(), throwsA(isA<Failure>()));

      remote.failFromOffset = null;
      remote.requestedOffsets.clear();
      await repository.syncCatalog();

      // No vuelve a pedir la primera página.
      expect(remote.requestedOffsets, [50, 100]);
      expect(await repository.watchPokemon().first, hasLength(120));
    });
  });

  group('lectura offline', () {
    test('leer el catálogo no hace ninguna petición de red', () async {
      await repository.syncCatalog();
      remote.requestedOffsets.clear();

      await repository.watchPokemon().first;

      expect(remote.requestedOffsets, isEmpty);
    });

    test('sin conexión el catálogo guardado sigue disponible', () async {
      await repository.syncCatalog();

      // Se pierde la conexión y se fuerza una sincronización: falla...
      remote.failFromOffset = 0;
      await expectLater(
        repository.syncCatalog(force: true),
        throwsA(isA<NetworkFailure>()),
      );

      // ...pero lo guardado no se pierde.
      final pokemon = await repository.watchPokemon().first;
      expect(pokemon, hasLength(120));
      expect(pokemon.first.name, 'pokemon-1');
    });
  });
}
