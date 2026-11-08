import 'package:drift/drift.dart';
import '../../../../core/database/app_database.dart';




class PokemonLocalDataSource  {

  PokemonLocalDataSource (this._db);
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

  Future<void> saveSync({

    required String resourceKey,
    required String status,
    required int offset,
    DateTime? lastSuccessAt,

  }) =>
      _db.into(_db.syncMetadataTable).insertOnConflictUpdate(
        SyncMetadataTableCompanion(
          resourceKey:  Value(resourceKey),
          status: Value(status),
          offset: Value(offset),
          lastSuccessAt:  lastSuccessAt !=null
              ? Value(lastSuccessAt)
              : const Value.absent(),

        ),
      );




}