import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/entities/pokemon_detail.dart';
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
      generation: const Value(1),
      baseTotal: const Value(100),
      heightDm: const Value(10),
      weightHg: const Value(100),
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

  /// Fila de Drift → detalle del Pokémon para la pantalla de detalles.
  static PokemonDetail toDetail(PokemonRow row) {
    return PokemonDetail(
      pokemon: toEntity(row),
      heightM: row.heightDm / 10,
      weightKg: row.weightHg / 10,
      eggGroups: const [],
      stats: [
        PokemonStat(name: 'hp', baseValue: row.baseTotal), // Simplificado por ahora
      ],
      abilities: const [],
      evolutions: const [],
      moves: const [],
      forms: const [],
      typeMatchups: const {},
    );
  }
}
