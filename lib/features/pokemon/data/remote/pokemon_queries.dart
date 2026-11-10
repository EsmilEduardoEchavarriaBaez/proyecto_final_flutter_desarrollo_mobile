const String pokemonPageQuery =
r'''
query PokemonPage($limit: Int!, $offset: Int!) {
  pokemon(
    limit: $limit
    offset: $offset
    order_by: {id: asc}
    where: {id: {_lt: 10000}}
  ) {
    id
    name
    pokemontypes {
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