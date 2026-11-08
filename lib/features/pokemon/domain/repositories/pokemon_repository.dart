import '../entities/pokemon.dart';

abstract class PokemonRepository {
  /// Stream de la base local. La UI solo observa esto.
  Stream<List<Pokemon>> watchPokemon();

  /// Descarga desde PokeAPI y guarda en la base local.
  /// Lanza un Failure si falla; los datos locales se conservan.
  Future<void> refresh();
}