import 'package:drift/drift.dart';

import 'pokemon_table.dart';
import 'type_table.dart';

@DataClassName('PokemonTypeRow')
@TableIndex(name: 'idx_pokemon_type_type', columns: {#typeId})


class PokemonTypeTable  extends Table{

  IntColumn get pokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get typeId => integer().references(TypeTable, #id)();
  IntColumn get slot => integer()(); //

  @override
  Set<Column<Object>> get primaryKey => {pokemonId, slot};



}