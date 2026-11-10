/// Un Pokémon del catálogo, tal como lo usa la interfaz.
///
/// Es una clase del dominio: no sabe nada de Drift, de GraphQL ni de Flutter.
class Pokemon {
  const Pokemon({
    required this.id,
    required this.dexNumber,
    required this.name,
    required this.types,
    this.imageUrl,
  });

  /// Identificador en PokeAPI.
  final int id;

  /// Número en la Pokédex nacional.
  final int dexNumber;

  /// Nombre tal como lo envía PokeAPI, en minúsculas. Ejemplo: `bulbasaur`.
  final String name;

  /// Tipos en orden, con el nombre que envía PokeAPI. Ejemplo: `grass`.
  final List<String> types;

  /// URL de la imagen; `null` si no tiene.
  final String? imageUrl;
}
