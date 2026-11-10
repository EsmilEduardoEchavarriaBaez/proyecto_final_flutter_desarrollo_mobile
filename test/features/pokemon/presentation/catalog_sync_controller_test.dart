import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/error/failures.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/pokemon_dependencies.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/presentation/providers/pokemon_catalog_providers.dart';

import '../../../helpers/fake_pokemon_repository.dart';

void main() {
  late FakePokemonRepository repository;
  late ProviderContainer container;

  setUp(() {
    repository = FakePokemonRepository();
    // El contenedor usa el repositorio falso en lugar del real.
    container = ProviderContainer.test(
      overrides: [pokemonRepositoryProvider.overrideWithValue(repository)],
    );
  });

  /// Observa el provider (como haría la pantalla) y espera a que termine la
  /// sincronización inicial.
  Future<void> startAndWait() async {
    container.listen(catalogSyncProvider, (previous, next) {});
    await pumpEventQueue();
  }

  test('al observarse lanza la sincronización inicial sin forzarla', () async {
    await startAndWait();

    expect(repository.syncCalls, [false]);
    expect(container.read(catalogSyncProvider).hasError, isFalse);
    expect(container.read(catalogSyncProvider).isLoading, isFalse);
  });

  test('mientras se descarga, el estado es de carga', () async {
    repository.pendingSync = Completer<void>();

    await startAndWait();
    expect(container.read(catalogSyncProvider).isLoading, isTrue);

    repository.pendingSync!.complete();
    await pumpEventQueue();
    expect(container.read(catalogSyncProvider).isLoading, isFalse);
  });

  test('si la descarga falla expone el error y no reintenta solo', () async {
    repository.syncError = const NetworkFailure();

    await startAndWait();
    // Tiempo de sobra para que se hubiera disparado un reintento automático.
    await Future<void>.delayed(const Duration(milliseconds: 500));

    expect(container.read(catalogSyncProvider).error, isA<NetworkFailure>());
    expect(repository.syncCalls, hasLength(1));
  });

  test('refresh fuerza otra sincronización y limpia el error', () async {
    repository.syncError = const NetworkFailure();
    await startAndWait();

    // Vuelve la conexión y el usuario pulsa «Reintentar».
    repository.syncError = null;
    await container.read(catalogSyncProvider.notifier).refresh();

    expect(repository.syncCalls, [false, true]);
    expect(container.read(catalogSyncProvider).hasError, isFalse);
  });

  test('durante el reintento el estado vuelve a ser de carga', () async {
    repository.syncError = const NetworkFailure();
    await startAndWait();

    repository.pendingSync = Completer<void>();
    final refreshing = container.read(catalogSyncProvider.notifier).refresh();
    expect(container.read(catalogSyncProvider).isLoading, isTrue);

    repository.pendingSync!.complete();
    await refreshing;
    expect(container.read(catalogSyncProvider).isLoading, isFalse);
  });
}
