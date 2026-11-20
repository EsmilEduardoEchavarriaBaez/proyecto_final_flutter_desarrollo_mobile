

import 'package:drift/drift.dart';

@DataClassName('TriviaResultRow')
class TriviaResultTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get score => integer()();
  IntColumn get correctAnswers => integer()();
  IntColumn get totalQuestions => integer()();
  DateTimeColumn get playedAt => dateTime().withDefault(currentDateAndTime)();
}