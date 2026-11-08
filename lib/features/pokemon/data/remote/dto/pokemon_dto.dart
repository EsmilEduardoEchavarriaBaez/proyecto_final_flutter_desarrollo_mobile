class PokemonDto {

  const PokemonDto({

    required this.id,
    required this.name,
    required this.types,
    required this.sprites,

});

  final int id;
  final String name;
  final List<String> types;
  final Map<String, dynamic>? sprites;

  factory PokemonDto.fromJson(Map< String ,dynamic> json)
  {
    final types =(json['pokemon_v2_pokemontypes'] as List<dynamic>? ?? [])
        .map((t) => ((t as Map)["pokemon_v2_type"] as Map)['name'] as String )
        .toList();

  final spriteRows = json['pokemon_v2_pokemonsprites'] as List<dynamic>? ?? [];
  final sprites = spriteRows.isEmpty ? null
      : (spriteRows.first as Map)['sprites'] as Map<String, dynamic>? ;

   return PokemonDto(id: json['id'] as int, name: json ['name' ] as String , types: types, sprites: sprites);

  }

}