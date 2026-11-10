import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/pokemon.dart';
import '../../pokemon_dependencies.dart';

/// Catálogo de Pokémon leído de la base local.
///
/// La pantalla observa este provider y se reconstruye sola cada vez que la
/// base cambia (por ejemplo, al guardarse una página recién descargada).
final pokemonListProvider = StreamProvider<List<Pokemon>>((ref) {
  return ref.watch(pokemonRepositoryProvider).watchPokemon();
});

/// Estado de la sincronización del catálogo con PokeAPI:
///
/// - cargando: hay una descarga en curso;
/// - error: la última descarga falló;
/// - datos: no hay nada pendiente.
///
/// No contiene los Pokémon: esos se leen siempre con [pokemonListProvider].
final catalogSyncProvider = AsyncNotifierProvider<CatalogSyncController, void>(
  CatalogSyncController.new,
  // Riverpod reintenta por su cuenta los providers que fallan. Aquí se
  // desactiva: el reintento lo decide el usuario con el botón «Reintentar».
  retry: (retryCount, error) => null,
);

/// Lanza la sincronización del catálogo y expone cómo va.
class CatalogSyncController extends AsyncNotifier<void> {
  /// Se ejecuta la primera vez que la pantalla observa el provider: inicia la
  /// sincronización en segundo plano, sin bloquear la interfaz.
  @override
  Future<void> build() {
    return ref.watch(pokemonRepositoryProvider).syncCatalog();
  }

  /// Vuelve a sincronizar aunque los datos guardados sigan vigentes. Lo usan
  /// el botón «Reintentar» y el gesto de deslizar la lista hacia abajo.
  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(pokemonRepositoryProvider).syncCatalog(force: true),
    );
  }
}
