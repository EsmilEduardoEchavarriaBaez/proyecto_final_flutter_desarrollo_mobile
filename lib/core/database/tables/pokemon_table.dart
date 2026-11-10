import 'package:drift/drift.dart';

/// Catálogo de Pokémon descargado de PokeAPI.
///
/// La interfaz muestra lo que hay en esta tabla: la app siempre lee de aquí,
/// nunca directamente de la red.
@DataClassName('PokemonRow')
class PokemonTable extends Table {
  /// Id del Pokémon en PokeAPI. Al ser la llave primaria, volver a guardar el
  /// mismo Pokémon actualiza su fila en lugar de duplicarla.
  IntColumn get id => integer()();

  /// Número en la Pokédex nacional.
  IntColumn get dexNumber => integer()();

  TextColumn get name => text()();

  /// Tipos separados por coma, en orden. Ejemplo: `grass,poison`.
  TextColumn get types => text()();

  /// URL de la imagen; `null` si PokeAPI no tiene ninguna.
  TextColumn get imageUrl => text().nullable()();

  /// Momento en que se guardó o actualizó la fila.
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
