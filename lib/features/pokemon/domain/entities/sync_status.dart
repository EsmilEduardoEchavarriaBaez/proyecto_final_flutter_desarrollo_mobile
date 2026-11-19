
/// Disponibilidad real del servicio GraphQL
enum ServiceStatus {
  verifying,
  online,
  offline,
  serviceUnavailable,
}

/// Actividad de sincronización del catálogo.
enum SyncState {
  idle,
  syncing,
  completed,
  failed,
  waitingRetry,
}


class CatalogSyncInfo {
  const CatalogSyncInfo({
    required this.state,
    this.lastSuccessAt,
    this.isPartial = false,
    this.localCount = 0,
  });

  final SyncState state;


  final DateTime? lastSuccessAt;

  final bool isPartial;

  final int localCount;
}