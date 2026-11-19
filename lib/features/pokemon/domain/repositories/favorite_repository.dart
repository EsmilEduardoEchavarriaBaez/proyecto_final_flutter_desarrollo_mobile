import '../../../pokemon/domain/entities/pokemon.dart';



abstract class FavoriteRepository {


  /// Ids de favoritos. Stream reactivo
  Stream<Set<int>> watchFavoriteIds();


  /// Favoritos con sus datos del catálogo
  Stream<List<Pokemon>> watchFavorites();

  Future<void> toggle(int pokemonId);


}