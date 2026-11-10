import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/data/repositories/connectivity_repository_impl.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/domain/entities/connectivity_status.dart';

/// Plugin falso: la prueba decide qué redes están activas.
class FakeConnectivity implements Connectivity {
  FakeConnectivity(this.current);

  /// Redes activas al consultar el estado actual.
  List<ConnectivityResult> current;

  final changes = StreamController<List<ConnectivityResult>>();

  @override
  Future<List<ConnectivityResult>> checkConnectivity() async => current;

  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged => changes.stream;
}

void main() {
  test('emite primero el estado actual y luego cada cambio', () async {
    final plugin = FakeConnectivity([ConnectivityResult.wifi]);
    final repository = ConnectivityRepositoryImpl(plugin);

    final emitted = <ConnectivityStatus>[];
    final subscription = repository.watchStatus().listen(emitted.add);
    await pumpEventQueue();

    plugin.changes.add([ConnectivityResult.none]);
    await pumpEventQueue();
    plugin.changes.add([ConnectivityResult.mobile, ConnectivityResult.vpn]);
    await pumpEventQueue();
    await subscription.cancel();

    expect(emitted, [
      ConnectivityStatus.online,
      ConnectivityStatus.offline,
      ConnectivityStatus.online,
    ]);
  });

  test('sin ninguna red activa el estado inicial es offline', () async {
    final plugin = FakeConnectivity([ConnectivityResult.none]);
    final repository = ConnectivityRepositoryImpl(plugin);

    expect(await repository.watchStatus().first, ConnectivityStatus.offline);
  });
}
