import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_database.dart';

/// Única instancia de la base de datos local para toda la app.
///
/// Se crea la primera vez que alguien la pide y se cierra cuando la app
/// termina.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final database = AppDatabase.open();
  ref.onDispose(database.close);
  return database;
});
