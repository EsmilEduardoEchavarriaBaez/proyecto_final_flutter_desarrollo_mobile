import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/connectivity_dependencies.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/domain/entities/connectivity_status.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/presentation/widgets/connectivity_indicator.dart';

import '../../helpers/fake_connectivity_repository.dart';

void main() {
  testWidgets('muestra texto e icono de Online y de Offline', (tester) async {
    final connectivity = FakeConnectivityRepository();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          connectivityRepositoryProvider.overrideWithValue(connectivity),
        ],
        child: const MaterialApp(
          home: Scaffold(bottomNavigationBar: ConnectivityIndicator()),
        ),
      ),
    );

    // Antes de conocer el estado de la red.
    expect(find.text('Comprobando conexión…'), findsOneWidget);

    connectivity.emit(ConnectivityStatus.online);
    await tester.pump();
    expect(find.text('En línea'), findsOneWidget);
    expect(find.byIcon(Icons.wifi), findsOneWidget);

    // Se pierde la conexión: el indicador cambia solo.
    connectivity.emit(ConnectivityStatus.offline);
    await tester.pump();
    expect(find.text('Sin conexión'), findsOneWidget);
    expect(find.byIcon(Icons.wifi_off), findsOneWidget);
    expect(find.text('En línea'), findsNothing);
  });
}
