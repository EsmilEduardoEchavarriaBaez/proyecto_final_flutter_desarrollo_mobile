import 'package:drift/drift.dart';

/// Pokémon que el usuario marcó como favoritos.
///
/// Solo guarda el id del Pokémon; sus datos se leen del catálogo. Así los
/// favoritos, que son datos del usuario, no dependen de que el catálogo se
/// vuelva a descargar.
@DataClassName('FavoriteRow')
class FavoriteTable extends Table {
  /// Id del Pokémon favorito. Es la llave primaria: un Pokémon solo puede
  /// estar una vez en favoritos.
  IntColumn get pokemonId => integer()();

  /// Momento en que se marcó como favorito.
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {pokemonId};
}
