import 'package:drift/drift.dart';

@DataClassName('AbilityRow')
class AbilityTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().unique()();
  TextColumn get effectSummary => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
