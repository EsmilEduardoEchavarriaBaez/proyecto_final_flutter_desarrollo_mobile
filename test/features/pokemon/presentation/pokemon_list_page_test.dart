import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/error/failures.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/pokemon_dependencies.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/presentation/pages/pokemon_list_page.dart';

import '../../../helpers/fake_pokemon_repository.dart';

void main() {
  /// Abre la pantalla del catálogo usando [repository] en lugar del real.
  Future<void> pumpPage(
    WidgetTester tester,
    FakePokemonRepository repository,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [pokemonRepositoryProvider.overrideWithValue(repository)],
        child: const MaterialApp(home: PokemonListPage()),
      ),
    );
    // Deja que el stream de la base local y la sincronización respondan.
    await tester.pump();
    await tester.pump();
  }

  testWidgets('carga: sin datos guardados y descargando', (tester) async {
    final repository = FakePokemonRepository()..pendingSync = Completer<void>();

    await pumpPage(tester, repository);

    expect(find.text('Descargando el catálogo…'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('error: sin datos guardados y la descarga falla', (tester) async {
    final repository = FakePokemonRepository()
      ..syncError = const NetworkFailure();

    await pumpPage(tester, repository);

    expect(find.text('No se pudo cargar el catálogo'), findsOneWidget);
    expect(find.text('No hay conexión a internet.'), findsOneWidget);
    expect(find.text('Reintentar'), findsOneWidget);
  });

  testWidgets('«Reintentar» vuelve a sincronizar', (tester) async {
    final repository = FakePokemonRepository()
      ..syncError = const NetworkFailure();
    await pumpPage(tester, repository);

    await tester.tap(find.text('Reintentar'));
    await tester.pump();

    // Primera llamada: la inicial. Segunda: la forzada por el botón.
    expect(repository.syncCalls, [false, true]);
  });

  testWidgets('vacío: sin datos y sin nada pendiente', (tester) async {
    await pumpPage(tester, FakePokemonRepository());

    expect(find.text('Aún no hay Pokémon'), findsOneWidget);
    expect(find.text('Reintentar'), findsOneWidget);
  });

  testWidgets('lista: muestra nombre, número y tipos', (tester) async {
    final repository = FakePokemonRepository(stored: [bulbasaur, charmander]);

    await pumpPage(tester, repository);

    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.text('#0001'), findsOneWidget);
    expect(find.text('Planta'), findsOneWidget);
    expect(find.text('Veneno'), findsOneWidget);
    expect(find.text('Charmander'), findsOneWidget);
    expect(find.text('#0004'), findsOneWidget);
    expect(find.text('Fuego'), findsOneWidget);
  });

  testWidgets('lista: se puede navegar mientras se descarga', (tester) async {
    final repository = FakePokemonRepository(stored: [bulbasaur])
      ..pendingSync = Completer<void>();

    await pumpPage(tester, repository);

    // La lista ya se ve y la barra de progreso indica la descarga en curso.
    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets(
    'offline: lo guardado se sigue viendo si falla la sincronización',
    (tester) async {
      final repository = FakePokemonRepository(stored: [bulbasaur])
        ..syncError = const NetworkFailure();

      await pumpPage(tester, repository);

      expect(find.text('Bulbasaur'), findsOneWidget);
      expect(
        find.text(
          'No se pudo actualizar el catálogo. No hay conexión a internet.',
        ),
        findsOneWidget,
      );
      expect(find.text('Reintentar'), findsOneWidget);
    },
  );
}
