import 'package:drift/drift.dart';
import 'type_table.dart';

@DataClassName('TypeMatchupRow')
class TypeMatchupTable extends Table {
  @ReferenceName('attackingMatchups')
  IntColumn get attackingTypeId => integer().references(TypeTable, #id)();
  @ReferenceName('defendingMatchups')
  IntColumn get defendingTypeId => integer().references(TypeTable, #id)();
  RealColumn get multiplier => real()();

  @override
  Set<Column<Object>> get primaryKey => {attackingTypeId, defendingTypeId};
}
