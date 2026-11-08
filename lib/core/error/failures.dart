

  abstract class Failure {

    const Failure(this.message);
    final String message;

  }
  class NetworkFailure extends Failure {

    const NetworkFailure([super.message="Fallo en la conexion"]);


  }

  class TimeoutFailure extends Failure {

    const TimeoutFailure([super.message = "El servicio tardo demasiado"]);

  }

   class RateLimitFailure  extends Failure{

  const RateLimitFailure([super.message = "Limite de peticiones alcanzado"]);

  }
  class ServerFailure   extends Failure{

    const ServerFailure ([super.message = "Servicio no se ecuentra disponible "]);

  }