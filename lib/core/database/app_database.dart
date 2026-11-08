import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'tables/favorite_table.dart';
import 'tables/pokemon_table.dart';
import 'tables/sync_metadata_table.dart';




part 'app_database.g.dart';


@DriftDatabase(tables: [PokemonTable, FavoriteTable, SyncMetadataTable])

class AppDatabase extends _$AppDatabase {

  AppDatabase(super.e);

  factory AppDatabase.open() => AppDatabase(driftDatabase(name: 'pokedex'));

  @override
  int get schemaVersion => 1;



}

