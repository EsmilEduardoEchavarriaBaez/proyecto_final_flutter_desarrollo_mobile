/// Consulta GraphQL que trae una página del catálogo de Pokémon.
///
/// - `limit` y `offset` hacen la paginación.
/// - `order_by` fija el orden, para que las páginas no se solapen.
/// - `is_default` deja solo la forma base de cada especie (sin megas ni
///   formas regionales).
///
/// Los nombres de los campos son los del esquema `v1beta2` de PokeAPI.
const String pokemonPageQuery = r'''
query PokemonPage($limit: Int!, $offset: Int!) {
  pokemon(
    limit: $limit
    offset: $offset
    order_by: {id: asc}
    where: {is_default: {_eq: true}}
  ) {
    id
    name
    pokemon_species_id
    pokemontypes(order_by: {slot: asc}) {
      type {
        name
      }
    }
    pokemonsprites {
      sprites
    }
  }
}
''';
