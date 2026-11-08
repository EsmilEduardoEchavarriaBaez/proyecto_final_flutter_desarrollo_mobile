import 'package:drift/drift.dart';



@DataClassName('PokemonRow')

class PokemonTable extends Table{


  //Id de pokeapi
  IntColumn get id => integer()();
  IntColumn get dexNumber => integer()();
  TextColumn get  name => text()();
  TextColumn get types => text()();
  TextColumn get imageUrl => text().nullable()();
  DateTimeColumn get  updatedAt  => dateTime().withDefault(currentDateAndTime)();

  @override
 Set<Column> get primaryKey => {id};





}

