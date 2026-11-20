import 'package:drift/drift.dart';
import 'pokemon_table.dart';
import 'egg_group_table.dart';

@DataClassName('PokemonEggGroupRow')
class PokemonEggGroupTable extends Table {
  IntColumn get pokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get eggGroupId => integer().references(EggGroupTable, #id)();

  @override
  Set<Column<Object>> get primaryKey => {pokemonId, eggGroupId};
}
