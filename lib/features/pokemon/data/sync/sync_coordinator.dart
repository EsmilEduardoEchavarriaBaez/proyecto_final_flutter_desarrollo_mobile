/// Evita que se ejecuten dos sincronizaciones al mismo tiempo.
///
/// Si llega una segunda petición mientras hay una en curso (por ejemplo, el
/// usuario pulsa «Reintentar» durante la descarga inicial), no se inicia otra:
/// quien la pidió espera el resultado de la que ya está corriendo.
class SyncCoordinator {
  /// Sincronización en curso; `null` cuando no hay ninguna.
  Future<void>? _running;

  Future<void> run(Future<void> Function() task) {
    final running = _running;
    if (running != null) return running;

    final future = task().whenComplete(() => _running = null);
    _running = future;
    return future;
  }
}
