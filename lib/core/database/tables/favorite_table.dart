
import 'package:drift/drift.dart';


class  FavoriteTable extends Table{




   IntColumn get pokemonId => integer()();

   DateTimeColumn get  createdAt => dateTime().withDefault(currentDateAndTime)();

   @override
  Set<Column> get primaryKey => {pokemonId};



}