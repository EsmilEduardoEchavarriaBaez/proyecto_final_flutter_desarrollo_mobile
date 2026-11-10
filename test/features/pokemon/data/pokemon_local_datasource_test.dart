import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/app_database.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/tables/sync_metadata_table.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/local/pokemon_local_datasource.dart';

void main() {
  late AppDatabase db;
  late PokemonLocalDataSource dataSource;

  setUp(() {
    // Base en memoria: cada prueba empieza con las tablas vacías.
    db = AppDatabase(NativeDatabase.memory());
    dataSource = PokemonLocalDataSource(db);
  });

  tearDown(() => db.close());

  PokemonTableCompanion row(int id, String name) {
    return PokemonTableCompanion.insert(
      id: Value(id),
      dexNumber: id,
      name: name,
      types: 'grass,poison',
    );
  }

  test('upsert no duplica filas', () async {
    await dataSource.upsertAll([row(1, 'bulbasaur')]);
    await dataSource.upsertAll([row(1, 'bulbasaur')]);

    final rows = await dataSource.watchAll().first;
    expect(rows, hasLength(1));
  });

  test('upsert actualiza la fila cuando el id ya existe', () async {
    await dataSource.upsertAll([row(1, 'nombre-viejo')]);
    await dataSource.upsertAll([row(1, 'bulbasaur')]);

    final rows = await dataSource.watchAll().first;
    expect(rows.single.name, 'bulbasaur');
  });

  test('watchAll devuelve el catálogo ordenado por id', () async {
    await dataSource.upsertAll([row(3, 'venusaur'), row(1, 'bulbasaur')]);

    final rows = await dataSource.watchAll().first;
    expect(rows.map((r) => r.id), [1, 3]);
  });

  test('watchAll vuelve a emitir cuando la tabla cambia', () async {
    final emissions = <int>[];
    final subscription = dataSource.watchAll().listen(
      (rows) => emissions.add(rows.length),
    );

    await pumpEventQueue();
    await dataSource.upsertAll([row(1, 'bulbasaur')]);
    await pumpEventQueue();
    await subscription.cancel();

    expect(emissions, [0, 1]);
  });

  test('los metadatos no existen hasta la primera sincronización', () async {
    expect(await dataSource.getSyncMetadata('pokemon_catalog'), isNull);
  });

  test('un fallo no borra la fecha de la última sincronización', () async {
    final lastSuccess = DateTime(2026, 11, 1);
    await dataSource.saveSyncMetadata(
      resourceKey: 'pokemon_catalog',
      status: SyncStatus.completed,
      nextOffset: 0,
      lastSuccessAt: lastSuccess,
    );
    await dataSource.saveSyncMetadata(
      resourceKey: 'pokemon_catalog',
      status: SyncStatus.failed,
      nextOffset: 50,
    );

    final metadata = await dataSource.getSyncMetadata('pokemon_catalog');
    expect(metadata!.status, SyncStatus.failed);
    expect(metadata.nextOffset, 50);
    expect(metadata.lastSuccessAt, lastSuccess);
  });
}
