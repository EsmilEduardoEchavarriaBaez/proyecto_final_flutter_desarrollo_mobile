import 'package:drift/drift.dart';

@DataClassName('PokemonRow')
@TableIndex(name: 'idx_pokemon_generation', columns: {#generation})
@TableIndex(name: 'idx_pokemon_name', columns: {#name})
@TableIndex(name: 'idx_pokemon_base_total', columns: {#baseTotal})

class PokemonTable extends Table {


  IntColumn get id => integer()();
  IntColumn get dexNumber => integer()();
  TextColumn get name => text()();
  IntColumn get generation => integer()();
  IntColumn get baseTotal => integer().withDefault(const Constant(0))();
  IntColumn get heightDm => integer().withDefault(const Constant(0))();
  IntColumn get weightHg => integer().withDefault(const Constant(0))();
  TextColumn get imageUrl => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  // 🗑 Se elimina la columna `types` (texto separado por comas).

  @override
  Set<Column<Object>> get primaryKey => {id};
}
