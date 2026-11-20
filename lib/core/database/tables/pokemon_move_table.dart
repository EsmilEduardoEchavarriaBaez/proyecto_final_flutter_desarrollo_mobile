import 'package:drift/drift.dart';
import 'pokemon_table.dart';
import 'move_table.dart';

@DataClassName('PokemonMoveRow')
@TableIndex(name: 'idx_pokemon_move_version', columns: {#pokemonId, #versionGroup})
class PokemonMoveTable extends Table {
  IntColumn get pokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get moveId => integer().references(MoveTable, #id)();
  TextColumn get versionGroup => text()();
  TextColumn get learnMethod => text()();
  IntColumn get levelLearned => integer().nullable()();

  @override
  Set<Column<Object>> get primaryKey =>
      {pokemonId, moveId, versionGroup, learnMethod};
}
