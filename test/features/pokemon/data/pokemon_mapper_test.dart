import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/core/database/app_database.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/mappers/pokemon_mapper.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/remote/dto/pokemon_dto.dart';

void main() {
  test('toCompanion convierte el DTO en una fila de la base local', () {
    const dto = PokemonDto(
      id: 1,
      dexNumber: 1,
      name: 'bulbasaur',
      types: ['grass', 'poison'],
      imageUrl: 'https://img.test/1.png',
    );

    final companion = PokemonMapper.toCompanion(dto);

    expect(companion.id.value, 1);
    expect(companion.dexNumber.value, 1);
    expect(companion.name.value, 'bulbasaur');
    expect(companion.types.value, 'grass,poison');
    expect(companion.imageUrl.value, 'https://img.test/1.png');
  });

  test('toEntity convierte la fila en la entidad del dominio', () {
    final row = PokemonRow(
      id: 6,
      dexNumber: 6,
      name: 'charizard',
      types: 'fire,flying',
      imageUrl: null,
      updatedAt: DateTime(2026, 11, 9),
    );

    final pokemon = PokemonMapper.toEntity(row);

    expect(pokemon.id, 6);
    expect(pokemon.dexNumber, 6);
    expect(pokemon.name, 'charizard');
    expect(pokemon.types, ['fire', 'flying']);
    expect(pokemon.imageUrl, isNull);
  });
}
