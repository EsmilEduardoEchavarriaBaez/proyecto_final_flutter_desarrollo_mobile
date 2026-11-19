import '../entities/sync_status.dart';

/// Solo lectura del estado. La escritura la hace `PokemonRepository`.
abstract class SyncRepository {
  Stream<ServiceStatus> watchServiceStatus();
  Stream<CatalogSyncInfo> watchSyncInfo();
}