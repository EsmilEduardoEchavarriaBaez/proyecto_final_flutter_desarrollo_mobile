import 'package:drift/drift.dart';

@DataClassName('EggGroupRow')
class EggGroupTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().unique()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
