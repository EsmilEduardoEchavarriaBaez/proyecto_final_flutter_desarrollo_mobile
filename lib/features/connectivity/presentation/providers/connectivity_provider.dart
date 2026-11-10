import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../connectivity_dependencies.dart';
import '../../domain/entities/connectivity_status.dart';

/// Estado de la conexión, compartido por toda la app.
///
/// Cualquier widget que lo observe se reconstruye cuando el dispositivo gana
/// o pierde la conexión.
final connectivityStatusProvider = StreamProvider<ConnectivityStatus>((ref) {
  return ref.watch(connectivityRepositoryProvider).watchStatus();
});
