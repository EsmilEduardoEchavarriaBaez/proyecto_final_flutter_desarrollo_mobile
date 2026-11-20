import 'package:drift/drift.dart';

@DataClassName('MoveRow')
class MoveTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().unique()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
