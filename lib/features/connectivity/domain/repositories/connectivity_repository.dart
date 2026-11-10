import '../entities/connectivity_status.dart';

/// Contrato para conocer el estado de la conexión del dispositivo.
abstract class ConnectivityRepository {
  /// Emite el estado actual y, después, cada cambio de estado.
  Stream<ConnectivityStatus> watchStatus();
}
