import 'package:drift/drift.dart';
import 'form_table.dart';
import 'type_table.dart';

@DataClassName('FormTypeRow')
class FormTypeTable extends Table {
  IntColumn get formId =>
      integer().references(FormTable, #id, onDelete: KeyAction.cascade)();
  IntColumn get typeId => integer().references(TypeTable, #id)();
  IntColumn get slot => integer()();

  @override
  Set<Column<Object>> get primaryKey => {formId, slot};
}
