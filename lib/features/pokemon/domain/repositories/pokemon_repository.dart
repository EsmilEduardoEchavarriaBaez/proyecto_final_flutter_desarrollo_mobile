import '../entities/pokemon.dart';

/// Contrato del catálogo de Pokémon.
///
/// La capa de presentación solo conoce esta clase abstracta; la implementación
/// (Drift + GraphQL) vive en la capa de datos.
abstract class PokemonRepository {
  /// Catálogo guardado en la base local, ordenado por número.
  ///
  /// Es un `Stream`: emite la lista actual y vuelve a emitir cada vez que la
  /// base cambia. La interfaz solo lee de aquí.
  Stream<List<Pokemon>> watchPokemon();

  /// Descarga el catálogo de PokeAPI y lo guarda en la base local.
  ///
  /// Sin [force] solo descarga si hace falta: cuando nunca se completó una
  /// sincronización o la última ya es antigua. Con `force: true` descarga
  /// siempre.
  ///
  /// Lanza un `Failure` si la descarga falla; lo ya guardado se conserva.
  Future<void> syncCatalog({bool force = false});
}
