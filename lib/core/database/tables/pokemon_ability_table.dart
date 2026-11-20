import 'package:drift/drift.dart';
import 'pokemon_table.dart';
import 'ability_table.dart';

@DataClassName('PokemonAbilityRow')
class PokemonAbilityTable extends Table {
  IntColumn get pokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get abilityId => integer().references(AbilityTable, #id)();
  IntColumn get slot => integer()();
  BoolColumn get isHidden => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {pokemonId, abilityId};
}
