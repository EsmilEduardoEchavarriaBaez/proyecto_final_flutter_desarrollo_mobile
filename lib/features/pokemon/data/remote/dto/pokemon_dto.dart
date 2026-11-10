/// Pokémon tal como llega de PokeAPI (DTO: objeto de transferencia de datos).
///
/// Solo existe en la capa de datos. Aquí se concentra el conocimiento de la
/// forma del JSON: si la API cambia, este es el único archivo que se toca.
class PokemonDto {
  const PokemonDto({
    required this.id,
    required this.dexNumber,
    required this.name,
    required this.types,
    required this.imageUrl,
  });

  final int id;
  final int dexNumber;
  final String name;
  final List<String> types;
  final String? imageUrl;

  /// Crea el DTO a partir de un elemento de la lista `pokemon` de la
  /// respuesta de `pokemonPageQuery`.
  factory PokemonDto.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final typeRows = json['pokemontypes'] as List<dynamic>? ?? [];
    final spriteRows = json['pokemonsprites'] as List<dynamic>? ?? [];

    return PokemonDto(
      id: id,
      // El número de la Pokédex nacional es el id de la especie.
      dexNumber: json['pokemon_species_id'] as int? ?? id,
      name: json['name'] as String,
      types: typeRows.map((row) => row['type']['name'] as String).toList(),
      imageUrl: spriteRows.isEmpty
          ? null
          : _pickImageUrl(spriteRows.first['sprites']),
    );
  }

  /// Elige la imagen del Pokémon dentro del JSON de sprites: la ilustración
  /// oficial si existe y, si no, el sprite frontal.
  static String? _pickImageUrl(dynamic sprites) {
    if (sprites is! Map<String, dynamic>) return null;

    final officialArtwork =
        sprites['other']?['official-artwork']?['front_default'] as String?;
    return officialArtwork ?? sprites['front_default'] as String?;
  }
}
