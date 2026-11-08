import '../../../../core/error/failures.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../local/pokemon_local_datasource.dart';
import '../mappers/pokemon_mapper.dart';
import '../remote/pokemon_remote_datasource.dart';
import '../sync/sync_coordinator.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl(this._local, this._remote, this._sync);

  final PokemonLocalDataSource _local;
  final PokemonRemoteDataSource _remote;
  final SyncCoordinator _sync;

  static const String _resourceKey = 'pokemon_catalog';
  static const int _pageSize = 50;

  @override
  Stream<List<Pokemon>> watchPokemon() => _local
      .watchAll()
      .map((rows) => rows.map(PokemonMapper.toEntity).toList());

  @override
  Future<void> refresh() => _sync.run(() async {
    int offset = 0;
    try {
      await _local.saveSync(
        resourceKey: _resourceKey,
        status: 'sincronizando',
        offset: 0,
      );

      while (true) {
        final List<dynamic> page = await _remote.fetchPage(
          limit: _pageSize,
          offset: offset,
        );
        await _local.upsertAll(
          page.map((dto) => PokemonMapper.toCompanion(dto)).toList(),
        );
        offset = offset + page.length;
        if (page.length < _pageSize) break;
      }

      await _local.saveSync(
        resourceKey: _resourceKey,
        status: 'completada',
        offset: 0,
        lastSuccessAt: DateTime.now(),
      );
    } on Failure {
      await _local.saveSync(
        resourceKey: _resourceKey,
        status: 'fallida',
        offset: offset,
      );
      rethrow;
    }
  });
}