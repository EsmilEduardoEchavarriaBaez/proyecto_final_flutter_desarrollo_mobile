import '../entities/pokemon.dart';
import '../entities/pokemon_detail.dart';






abstract class PokemonRepository {
  
  Stream<List<Pokemon>> watchPokemon({String  query = ''});
  Stream<PokemonDetail?> watchDetail(int id);
  Future<void> syncCatalog({bool force = false});
  Future<int> verifyCatalogIntegrity();
  Future<int> countLocal();

}
