import 'dart:async';

import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/domain/entities/pokemon.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/domain/repositories/pokemon_repository.dart';

/// Repositorio falso para probar la capa de presentación sin base de datos
/// ni red.
class FakePokemonRepository implements PokemonRepository {
  FakePokemonRepository({this.stored = const []});

  /// Lo que hay «guardado en la base local».
  final List<Pokemon> stored;

  /// Si no es `null`, la sincronización falla con este error.
  Object? syncError;

  /// Si no es `null`, la sincronización queda en curso hasta completarlo.
  Completer<void>? pendingSync;

  /// Valor de `force` recibido en cada llamada a [syncCatalog].
  final List<bool> syncCalls = [];

  @override
  Stream<List<Pokemon>> watchPokemon() => Stream.value(stored);

  @override
  Future<void> syncCatalog({bool force = false}) async {
    syncCalls.add(force);
    await pendingSync?.future;

    final error = syncError;
    if (error != null) throw error;
  }
}

const bulbasaur = Pokemon(
  id: 1,
  dexNumber: 1,
  name: 'bulbasaur',
  types: ['grass', 'poison'],
);

const charmander = Pokemon(
  id: 4,
  dexNumber: 4,
  name: 'charmander',
  types: ['fire'],
);
