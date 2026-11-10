/// Errores esperados de la app, ya traducidos a un mensaje para el usuario.
///
/// La capa de datos convierte los errores técnicos (sin red, tiempo agotado,
/// HTTP 429...) en una de estas clases, y la interfaz solo muestra [message].
///
/// Es `sealed`: todas las subclases están en este archivo, así el compilador
/// las conoce y puede avisar si un `switch` olvida alguna.
sealed class Failure implements Exception {
  const Failure(this.message);

  /// Texto que se le muestra al usuario.
  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

/// El dispositivo no pudo conectarse al servidor.
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No hay conexión a internet.']);
}

/// El servidor tardó más de lo permitido en responder.
class TimeoutFailure extends Failure {
  const TimeoutFailure([
    super.message = 'El servicio tardó demasiado en responder.',
  ]);
}

/// El servidor rechazó la petición por exceso de solicitudes (HTTP 429).
class RateLimitFailure extends Failure {
  const RateLimitFailure([
    super.message = 'Se alcanzó el límite de peticiones. Intenta más tarde.',
  ]);
}

/// El servidor respondió con un error o con datos que no se pudieron leer.
class ServerFailure extends Failure {
  const ServerFailure([
    super.message = 'El servicio no está disponible en este momento.',
  ]);
}
