import 'dart:math';

import 'package:proyecto_final_flutter_desarrollo_mobile/core/error/failures.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/remote/dto/pokemon_dto.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/remote/pokemon_remote_datasource.dart';

/// PokeAPI falsa con [total] Pokémon. Anota qué páginas se le piden y puede
/// simular que no hay conexión.
class FakeRemoteDataSource implements PokemonRemoteDataSource {
  FakeRemoteDataSource({this.total = 120});

  final int total;

  /// `offset` de cada página pedida, en orden.
  final List<int> requestedOffsets = [];

  /// Si no es `null`, las páginas a partir de este offset fallan.
  int? failFromOffset;

  @override
  Future<List<PokemonDto>> fetchPage({
    required int limit,
    required int offset,
  }) async {
    requestedOffsets.add(offset);

    final failFrom = failFromOffset;
    if (failFrom != null && offset >= failFrom) throw const NetworkFailure();

    final lastId = min(offset + limit, total);
    return [
      for (var id = offset + 1; id <= lastId; id++)
        PokemonDto(
          id: id,
          dexNumber: id,
          name: 'pokemon-$id',
          types: const ['normal'],
          imageUrl: null,
        ),
    ];
  }
}
