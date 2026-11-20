
import 'package:drift/drift.dart';

import 'pokemon_table.dart';
import 'trivia_result_table.dart';

@DataClassName('TriviaAnswerRow')
class TriviaAnswerTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get triviaResultId =>
      integer().references(TriviaResultTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get pokemonId => integer().references(PokemonTable, #id)();
  BoolColumn get correct => boolean()();
}