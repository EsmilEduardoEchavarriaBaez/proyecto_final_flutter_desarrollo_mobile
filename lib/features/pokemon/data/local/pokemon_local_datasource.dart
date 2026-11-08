import 'package:drift/drift.dart';
import '../../../../core/database/app_database.dart';




class PokemonLocalDatasource {

  PokemonLocalDatasource(this._db);
  final AppDatabase _db;

  /// La UI observa esto. Drift emite un nuevo valor cuando cambia la tabla.

  Stream<List<PokemonRow>> watchAll() =>
       (_db.select(_db.pokemonTable)
       ..orderBy([(t) => OrderingTerm(expression: t.id)]))
        .watch();


   /// Si el id existe , actualiza la lista
      Future<void> upsertAll(List<PokemonTableCompanion> rows ) async{

        await _db.batch((b){b.insertAllOnConflictUpdate(_db.pokemonTable, rows);});

      }




}