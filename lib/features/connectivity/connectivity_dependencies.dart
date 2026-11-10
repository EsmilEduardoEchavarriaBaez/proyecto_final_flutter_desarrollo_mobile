import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/repositories/connectivity_repository_impl.dart';
import 'domain/repositories/connectivity_repository.dart';

/// Inyección de dependencias de la funcionalidad de conectividad.
///
/// Es el único lugar que conoce la implementación concreta; el resto de la
/// app la usa por su contrato ([ConnectivityRepository]).
final connectivityRepositoryProvider = Provider<ConnectivityRepository>((ref) {
  return ConnectivityRepositoryImpl(Connectivity());
});
