import 'package:connectivity_plus/connectivity_plus.dart';

import '../../domain/entities/connectivity_status.dart';
import '../../domain/repositories/connectivity_repository.dart';

/// Lee el estado de la red con el plugin `connectivity_plus`.
///
/// El plugin informa si el dispositivo tiene una red activa (wifi, datos...),
/// no si esa red tiene salida a internet. Si hay red pero PokeAPI no responde,
/// eso lo detecta la sincronización y lo informa como error.
class ConnectivityRepositoryImpl implements ConnectivityRepository {
  ConnectivityRepositoryImpl(this._connectivity);

  final Connectivity _connectivity;

  /// `async*` crea un `Stream`: `yield` emite un valor y `yield*` reenvía
  /// todos los valores de otro stream.
  @override
  Stream<ConnectivityStatus> watchStatus() async* {
    // Primero el estado actual, para no esperar al primer cambio de red.
    yield _toStatus(await _connectivity.checkConnectivity());
    yield* _connectivity.onConnectivityChanged.map(_toStatus);
  }

  /// El plugin entrega la lista de redes activas; cuando no hay ninguna, la
  /// lista contiene únicamente `ConnectivityResult.none`.
  ConnectivityStatus _toStatus(List<ConnectivityResult> activeNetworks) {
    return activeNetworks.contains(ConnectivityResult.none)
        ? ConnectivityStatus.offline
        : ConnectivityStatus.online;
  }
}
