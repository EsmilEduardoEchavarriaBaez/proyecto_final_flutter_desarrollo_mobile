import 'package:drift/drift.dart';

/// Estado de la última sincronización de un recurso.
enum SyncStatus {
  /// Hay una descarga en curso (o quedó a medias porque la app se cerró).
  syncing,

  /// La última descarga terminó bien.
  completed,

  /// La última descarga falló.
  failed,
}

/// Metadatos de sincronización: una fila por cada recurso que se descarga.
///
/// Sirven para decidir si hace falta volver a sincronizar (fecha de la última
/// descarga exitosa) y para reanudar una descarga que quedó incompleta.
@DataClassName('SyncMetadataRow')
class SyncMetadataTable extends Table {
  /// Nombre del recurso sincronizado. Ejemplo: `pokemon_catalog`.
  TextColumn get resourceKey => text()();

  /// Drift lo guarda como texto, con el nombre del valor del enum.
  TextColumn get status => textEnum<SyncStatus>()();

  /// Posición del catálogo desde la que debe continuar la descarga.
  IntColumn get nextOffset => integer().withDefault(const Constant(0))();

  /// Fecha de la última sincronización completa; `null` si nunca terminó una.
  DateTimeColumn get lastSuccessAt => dateTime().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {resourceKey};
}
