import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/app/app.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/connectivity_dependencies.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/domain/entities/connectivity_status.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/pokemon_dependencies.dart';

import 'helpers/fake_connectivity_repository.dart';
import 'helpers/fake_pokemon_repository.dart';

void main() {
  testWidgets('la app abre el catálogo con el indicador de conectividad', (
    tester,
  ) async {
    final connectivity = FakeConnectivityRepository();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          pokemonRepositoryProvider.overrideWithValue(
            FakePokemonRepository(stored: [bulbasaur]),
          ),
          connectivityRepositoryProvider.overrideWithValue(connectivity),
        ],
        child: const PokedexApp(),
      ),
    );
    connectivity.emit(ConnectivityStatus.offline);
    await tester.pump();
    await tester.pump();

    // El catálogo guardado y el indicador global se ven a la vez.
    expect(find.text('Pokédex'), findsOneWidget);
    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.text('Sin conexión'), findsOneWidget);
  });
}
