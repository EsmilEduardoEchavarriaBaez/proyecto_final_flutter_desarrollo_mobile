import 'dart:async';

import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/domain/entities/connectivity_status.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/connectivity/domain/repositories/connectivity_repository.dart';

/// Conectividad falsa: la prueba decide cuándo hay o no conexión con [emit].
class FakeConnectivityRepository implements ConnectivityRepository {
  final _controller = StreamController<ConnectivityStatus>.broadcast();

  void emit(ConnectivityStatus status) => _controller.add(status);

  @override
  Stream<ConnectivityStatus> watchStatus() => _controller.stream;
}
