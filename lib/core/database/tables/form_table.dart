import 'package:drift/drift.dart';
import 'pokemon_table.dart';

@DataClassName('FormRow')
class FormTable extends Table {
  IntColumn get id => integer()();
  IntColumn get pokemonId =>
      integer().references(PokemonTable, #id, onDelete: KeyAction.cascade)();
  TextColumn get name => text()();
  TextColumn get imageUrl => text().nullable()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
