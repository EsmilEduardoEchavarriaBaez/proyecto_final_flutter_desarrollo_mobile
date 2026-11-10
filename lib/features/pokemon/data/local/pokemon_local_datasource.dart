import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/database/tables/sync_metadata_table.dart';

/// Acceso a la base local (Drift) para el catálogo de Pokémon.
class PokemonLocalDataSource {
  PokemonLocalDataSource(this._db);

  final AppDatabase _db;

  /// Catálogo guardado, ordenado por id.
  ///
  /// Drift vuelve a emitir la lista cada vez que la tabla cambia; por eso la
  /// interfaz se actualiza sola mientras se descargan las páginas.
  Stream<List<PokemonRow>> watchAll() {
    final query = _db.select(_db.pokemonTable)
      ..orderBy([(table) => OrderingTerm.asc(table.id)]);
    return query.watch();
  }

  /// Inserta las filas; si el id ya existe, actualiza la fila en lugar de
  /// duplicarla (upsert).
  Future<void> upsertAll(List<PokemonTableCompanion> rows) {
    return _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.pokemonTable, rows);
    });
  }

  /// Metadatos de sincronización del recurso; `null` si nunca se sincronizó.
  Future<SyncMetadataRow?> getSyncMetadata(String resourceKey) {
    final query = _db.select(_db.syncMetadataTable)
      ..where((table) => table.resourceKey.equals(resourceKey));
    return query.getSingleOrNull();
  }

  /// Guarda el estado de la sincronización del recurso.
  ///
  /// Si no se pasa [lastSuccessAt], la fecha guardada no se modifica: una
  /// sincronización fallida no borra la fecha de la última exitosa.
  Future<void> saveSyncMetadata({
    required String resourceKey,
    required SyncStatus status,
    required int nextOffset,
    DateTime? lastSuccessAt,
  }) {
    return _db
        .into(_db.syncMetadataTable)
        .insertOnConflictUpdate(
          SyncMetadataTableCompanion.insert(
            resourceKey: resourceKey,
            status: status,
            nextOffset: Value(nextOffset),
            lastSuccessAt: Value.absentIfNull(lastSuccessAt),
          ),
        );
  }
}
