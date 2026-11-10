import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/pokemon.dart';
import '../providers/pokemon_catalog_providers.dart';
import '../widgets/catalog_message.dart';
import '../widgets/pokemon_list_item.dart';

/// Pantalla principal: el catálogo de Pokémon.
///
/// Observa dos cosas distintas:
///
/// - [pokemonListProvider]: los Pokémon guardados en la base local. Es lo
///   único que se pinta en la lista.
/// - [catalogSyncProvider]: cómo va la sincronización con PokeAPI. Solo sirve
///   para mostrar el progreso, el error y el botón «Reintentar».
class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catalog = ref.watch(pokemonListProvider);
    final sync = ref.watch(catalogSyncProvider);

    final isSyncing = sync.isLoading;
    // Mientras se vuelve a intentar, el error anterior deja de mostrarse.
    final syncError = isSyncing ? null : sync.error;

    Future<void> retry() => ref.read(catalogSyncProvider.notifier).refresh();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        // Barra fina de progreso mientras se descarga en segundo plano. El
        // espacio se reserva siempre para que la pantalla no salte.
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: isSyncing
              ? const LinearProgressIndicator()
              : const SizedBox(height: 4),
        ),
      ),
      body: _buildBody(
        catalog: catalog,
        isSyncing: isSyncing,
        syncError: syncError,
        onRetry: retry,
      ),
    );
  }

  Widget _buildBody({
    required AsyncValue<List<Pokemon>> catalog,
    required bool isSyncing,
    required Object? syncError,
    required Future<void> Function() onRetry,
  }) {
    final pokemon = catalog.value;

    // 1. La base local todavía no respondió (solo ocurre al abrir la app).
    //    Si además algo falló, se avisa en lugar de dejar la carga para
    //    siempre.
    if (pokemon == null) {
      if (catalog.hasError || syncError != null) {
        return const CatalogMessage(
          icon: Icons.error_outline,
          title: 'No se pudieron leer los datos guardados',
          message: 'Cierra la aplicación y vuelve a abrirla.',
        );
      }
      return const Center(child: CircularProgressIndicator());
    }

    // 2. Hay Pokémon guardados: se muestran siempre, aunque la
    //    sincronización siga en curso o haya fallado.
    if (pokemon.isNotEmpty) {
      return Column(
        children: [
          if (syncError != null)
            _SyncErrorBanner(
              message: _errorMessage(syncError),
              onRetry: onRetry,
            ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: onRetry,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: pokemon.length,
                itemBuilder: (context, index) {
                  final item = pokemon[index];
                  return PokemonListItem(key: ValueKey(item.id), pokemon: item);
                },
              ),
            ),
          ),
        ],
      );
    }

    // 3. La base está vacía: qué se muestra depende de la sincronización.
    if (isSyncing) {
      return const _LoadingCatalog();
    }
    if (syncError != null) {
      return CatalogMessage(
        icon: Icons.cloud_off,
        title: 'No se pudo cargar el catálogo',
        message: _errorMessage(syncError),
        onRetry: onRetry,
      );
    }
    return CatalogMessage(
      icon: Icons.catching_pokemon,
      title: 'Aún no hay Pokémon',
      message: 'El catálogo está vacío. Pulsa «Reintentar» para descargarlo.',
      onRetry: onRetry,
    );
  }
}

/// Texto que se le muestra al usuario para un error de sincronización.
String _errorMessage(Object error) {
  return error is Failure ? error.message : 'Ocurrió un error inesperado.';
}

/// Estado de carga: todavía no hay nada guardado y se está descargando.
class _LoadingCatalog extends StatelessWidget {
  const _LoadingCatalog();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Descargando el catálogo…'),
        ],
      ),
    );
  }
}

/// Aviso sobre la lista cuando la sincronización falla pero ya hay datos
/// guardados: la lista se sigue viendo y se ofrece reintentar.
class _SyncErrorBanner extends StatelessWidget {
  const _SyncErrorBanner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return MaterialBanner(
      leading: const Icon(Icons.cloud_off),
      content: Text('No se pudo actualizar el catálogo. $message'),
      actions: [
        TextButton(onPressed: onRetry, child: const Text('Reintentar')),
      ],
    );
  }
}
