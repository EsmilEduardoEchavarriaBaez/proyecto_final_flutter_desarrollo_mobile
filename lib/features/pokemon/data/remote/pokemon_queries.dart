const String pokemonPageQuery =
r'''
query PokemonPage($limit: Int!, $offset: Int!) {
  pokemon_v2_pokemon(
    limit: $limit
    offset: $offset
    order_by: {id: asc}
    where: {id: {_lt: 10000}}
  ) {
    id
    name
    pokemon_v2_pokemontypes {
      pokemon_v2_type {
        name
      }
    }
    pokemon_v2_pokemonsprites {
      sprites
    }
  }
}
''';