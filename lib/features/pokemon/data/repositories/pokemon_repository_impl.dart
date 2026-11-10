import '../../../../core/database/app_database.dart';
import '../../../../core/database/tables/sync_metadata_table.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../local/pokemon_local_datasource.dart';
import '../mappers/pokemon_mapper.dart';
import '../remote/pokemon_remote_datasource.dart';
import '../sync/sync_coordinator.dart';

/// Implementación offline-first del catálogo de Pokémon.
///
/// - Leer: siempre de la base local ([watchPokemon]).
/// - Sincronizar: descarga PokeAPI página a página y guarda cada página en la
///   base local ([syncCatalog]). La interfaz se entera de los datos nuevos
///   porque observa esa base, no porque reciba la respuesta de la red.
class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl(this._local, this._remote, this._syncCoordinator);

  final PokemonLocalDataSource _local;
  final PokemonRemoteDataSource _remote;
  final SyncCoordinator _syncCoordinator;

  /// Nombre con el que se guardan los metadatos de sincronización del catálogo.
  static const String _resourceKey = 'pokemon_catalog';

  /// Cantidad de Pokémon que se piden en cada página.
  static const int _pageSize = 50;

  /// Tiempo durante el cual una sincronización completa se considera vigente.
  static const Duration _maxAge = Duration(hours: 24);

  @override
  Stream<List<Pokemon>> watchPokemon() {
    return _local.watchAll().map(
      (rows) => rows.map(PokemonMapper.toEntity).toList(),
    );
  }

  @override
  Future<void> syncCatalog({bool force = false}) {
    return _syncCoordinator.run(() => _downloadCatalog(force: force));
  }

  Future<void> _downloadCatalog({required bool force}) async {
    final metadata = await _local.getSyncMetadata(_resourceKey);
    if (!force && _isUpToDate(metadata)) return;

    // Una sincronización que no terminó se reanuda donde se quedó; una que
    // terminó se repite desde el principio.
    final lastSyncCompleted = metadata?.status == SyncStatus.completed;
    var offset = lastSyncCompleted ? 0 : metadata?.nextOffset ?? 0;

    try {
      while (true) {
        await _local.saveSyncMetadata(
          resourceKey: _resourceKey,
          status: SyncStatus.syncing,
          nextOffset: offset,
        );

        final page = await _remote.fetchPage(limit: _pageSize, offset: offset);
        await _local.upsertAll(page.map(PokemonMapper.toCompanion).toList());
        offset += page.length;

        // Una página incompleta significa que ya no quedan más Pokémon.
        if (page.length < _pageSize) break;
      }

      await _local.saveSyncMetadata(
        resourceKey: _resourceKey,
        status: SyncStatus.completed,
        nextOffset: 0,
        lastSuccessAt: DateTime.now(),
      );
    } on Failure {
      // Se anota dónde se quedó para reanudar en el próximo intento. Lo ya
      // guardado en la base local no se toca.
      await _local.saveSyncMetadata(
        resourceKey: _resourceKey,
        status: SyncStatus.failed,
        nextOffset: offset,
      );
      rethrow;
    }
  }

  /// Indica si la última sincronización terminó bien y todavía está vigente.
  bool _isUpToDate(SyncMetadataRow? metadata) {
    final lastSuccessAt = metadata?.lastSuccessAt;
    if (metadata?.status != SyncStatus.completed || lastSuccessAt == null) {
      return false;
    }
    return DateTime.now().difference(lastSuccessAt) < _maxAge;
  }
}
