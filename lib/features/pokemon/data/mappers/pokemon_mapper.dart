import 'package:drift/drift.dart';
import '../../../../core/database/app_database.dart';
import '../../domain/entities/pokemon.dart';
import '../remote/dto/pokemon_dto.dart';


class PokemonMapper {


  /// Usa la imagen oficial, si no existe, el sprite frontal.
  static String? _artwork(Map<String, dynamic>? sprites)
  {
    final other = sprites?['other'] as Map<String, dynamic>?;
    final art = other?['official-artwork'] as Map<String, dynamic>?;
    return art?['front_default'] as String? ??
        sprites?['front_default'] as String?;
  }

  /// DTO remoto -> fila de Drift .
  static PokemonTableCompanion toCompanion(PokemonDto dto) =>
      PokemonTableCompanion(
        id: Value(dto.id),
        dexNumber: Value(dto.id),
        name: Value(dto.name),
        types: Value(dto.types.join(',')),
        imageUrl: Value(_artwork(dto.sprites)),
      );

  /// Fila de Drift -> entidad del dominio (lo que ve la UI).
  static Pokemon toEntity(PokemonRow row) => Pokemon(
    id: row.id,
    name: row.name,
    types: row.types.split(','),
    imageUrl: row.imageUrl,
  );


}