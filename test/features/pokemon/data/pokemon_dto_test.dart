import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/remote/dto/pokemon_dto.dart';

/// Un elemento de la respuesta de PokeAPI, con la forma del esquema v1beta2.
Map<String, dynamic> bulbasaurJson({Map<String, dynamic>? sprites}) {
  return {
    'id': 1,
    'name': 'bulbasaur',
    'pokemon_species_id': 1,
    'pokemontypes': [
      {
        'type': {'name': 'grass'},
      },
      {
        'type': {'name': 'poison'},
      },
    ],
    'pokemonsprites': [
      {
        'sprites':
            sprites ??
            {
              'front_default': 'https://img.test/sprite/1.png',
              'other': {
                'official-artwork': {
                  'front_default': 'https://img.test/artwork/1.png',
                },
              },
            },
      },
    ],
  };
}

void main() {
  test('lee id, número, nombre y tipos en orden', () {
    final dto = PokemonDto.fromJson(bulbasaurJson());

    expect(dto.id, 1);
    expect(dto.dexNumber, 1);
    expect(dto.name, 'bulbasaur');
    expect(dto.types, ['grass', 'poison']);
  });

  test('prefiere la ilustración oficial como imagen', () {
    final dto = PokemonDto.fromJson(bulbasaurJson());

    expect(dto.imageUrl, 'https://img.test/artwork/1.png');
  });

  test('usa el sprite frontal si no hay ilustración oficial', () {
    final dto = PokemonDto.fromJson(
      bulbasaurJson(
        sprites: {'front_default': 'https://img.test/sprite/1.png'},
      ),
    );

    expect(dto.imageUrl, 'https://img.test/sprite/1.png');
  });

  test('la imagen es null si PokeAPI no envía sprites', () {
    final json = bulbasaurJson()..['pokemonsprites'] = <dynamic>[];

    expect(PokemonDto.fromJson(json).imageUrl, isNull);
  });
}
