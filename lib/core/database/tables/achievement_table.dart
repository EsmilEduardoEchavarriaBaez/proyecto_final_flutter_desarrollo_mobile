import 'package:drift/drift.dart';


@DataClassName('AchievementRow')
class AchievementTable extends Table {
  TextColumn get kind => text()(); // nombre del AchievementKind
  DateTimeColumn get unlockedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {kind};
}