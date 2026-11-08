import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/app_database.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/local/pokemon_local_datasource.dart';

void main() {
  test('upsert no duplica filas', () async {
    final db = AppDatabase(NativeDatabase.memory());
    final ds = PokemonLocalDataSource(db);

    final row = PokemonTableCompanion.insert(
      id: const Value(1),
      dexNumber: 1,
      name: 'bulbasaur',
      types: 'grass,poison',
    );

    await ds.upsertAll([row]);
    await ds.upsertAll([row]); // segunda vez: no debe duplicar

    final rows = await ds.watchAll().first;
    expect(rows.length, 1);
    await db.close();
  });
}