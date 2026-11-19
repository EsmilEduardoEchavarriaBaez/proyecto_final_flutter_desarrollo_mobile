

enum PokemonSort {number,name,baseTotal}




class PokemonFilter{

  const  PokemonFilter({
    this.nameQuery = '',
    this.types = const {},
    this.generations  = const {},
    this.sort = PokemonSort.number,


});
  /// Texto buscado en el nombre (`LIKE %texto%`). Vacío = sin búsqueda.
   final String nameQuery;
  /// Nombres de tipo de PokeAPI (`fire`, `water`...). Vacío = todos.
   final Set<String> types;
  /// Generaciones (1 a 9). Vacío = todas.
   final Set<int> generations;

   final PokemonSort sort;


   PokemonFilter copyWith({
     String? nameQuery,
     Set<String>? types,
     Set<int>? generations,
     PokemonSort? sort,

}){

     return PokemonFilter(
       nameQuery: nameQuery ?? this.nameQuery,
       types:  types  ?? this.types,
       generations:  generations ?? this.generations,
       sort: sort ?? this.sort,

     );


   }


}