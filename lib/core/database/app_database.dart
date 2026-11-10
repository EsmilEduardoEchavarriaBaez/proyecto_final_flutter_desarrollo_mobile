import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables/favorite_table.dart';
import 'tables/pokemon_table.dart';
import 'tables/sync_metadata_table.dart';

part 'app_database.g.dart';

/// Base de datos local de la app (SQLite a través de Drift).
///
/// Es la fuente de datos de la interfaz: lo que se descarga de PokeAPI se
/// guarda aquí y las pantallas leen de aquí.
///
/// El archivo `app_database.g.dart` lo genera Drift a partir de las tablas:
/// `dart run build_runner build`.
@DriftDatabase(tables: [PokemonTable, FavoriteTable, SyncMetadataTable])
class AppDatabase extends _$AppDatabase {
  /// Recibe la conexión por parámetro para poder usar una base en memoria en
  /// las pruebas.
  AppDatabase(super.executor);

  /// Abre el archivo `pokedex.sqlite` del dispositivo. Las consultas se
  /// ejecutan en un isolate (hilo) aparte, sin bloquear la interfaz.
  factory AppDatabase.open() => AppDatabase(driftDatabase(name: 'pokedex'));

  /// Versión del esquema. Debe aumentar cada vez que cambien las tablas.
  @override
  int get schemaVersion => 1;
}
