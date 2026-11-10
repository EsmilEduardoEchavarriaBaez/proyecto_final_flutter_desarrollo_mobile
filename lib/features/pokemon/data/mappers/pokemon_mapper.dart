import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/entities/pokemon.dart';
import '../remote/dto/pokemon_dto.dart';

/// Convierte un Pokémon entre los modelos de cada capa:
///
/// `PokemonDto` (API) → `PokemonTableCompanion` (base local)
/// `PokemonRow` (base local) → `Pokemon` (dominio)
class PokemonMapper {
  /// DTO de la API → fila lista para guardar en Drift.
  static PokemonTableCompanion toCompanion(PokemonDto dto) {
    return PokemonTableCompanion.insert(
      id: Value(dto.id),
      dexNumber: dto.dexNumber,
      name: dto.name,
      types: dto.types.join(','),
      imageUrl: Value(dto.imageUrl),
      updatedAt: Value(DateTime.now()),
    );
  }

  /// Fila de Drift → entidad del dominio, que es lo que usa la interfaz.
  static Pokemon toEntity(PokemonRow row) {
    return Pokemon(
      id: row.id,
      dexNumber: row.dexNumber,
      name: row.name,
      types: row.types.split(','),
      imageUrl: row.imageUrl,
    );
  }
}
