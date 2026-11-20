import 'package:drift/drift.dart';
import 'pokemon_table.dart';

@DataClassName('StatRow')
class StatTable extends Table {
  IntColumn get pokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get statName => text()();
  IntColumn get baseValue => integer()();

  @override
  Set<Column<Object>> get primaryKey => {pokemonId, statName};
}
