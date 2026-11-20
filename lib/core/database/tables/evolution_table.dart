import 'package:drift/drift.dart';
import 'pokemon_table.dart';

@DataClassName('EvolutionRow')
@TableIndex(name: 'idx_evolution_from', columns: {#fromPokemonId})
class EvolutionTable extends Table {
  @ReferenceName('fromEvolutions')
  IntColumn get fromPokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  @ReferenceName('toEvolutions')
  IntColumn get toPokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get trigger => text()();
  IntColumn get minLevel => integer().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {fromPokemonId, toPokemonId};
}
