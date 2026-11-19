import 'dart:async';

import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/domain/entities/pokemon.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/domain/entities/pokemon_detail.dart';
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
  Stream<List<Pokemon>> watchPokemon({String query = ''})
  {
    final search = query.trim().toLowerCase();
    if (search.isEmpty) return Stream.value(stored);

    return Stream.value(
      stored
          .where((pokemon) => pokemon.name.toLowerCase().contains(search))
          .toList(),
    );
  }

  @override
  Stream<PokemonDetail?> watchDetail(int id) {
    final pokemon = stored.cast<Pokemon?>().firstWhere(
      (p) => p?.id == id,
      orElse: () => null,
    );

    if (pokemon == null) return Stream.value(null);

    return Stream.value(
      PokemonDetail(
        pokemon: pokemon,
        heightM: 0,
        weightKg: 0,
        eggGroups: const [],
        stats: const [],
        abilities: const [],
        evolutions: const [],
        moves: const [],
        forms: const [],
        typeMatchups: const {},
      ),
    );
  }

  @override
  Future<int> verifyCatalogIntegrity() async => stored.length;

  @override
  Future<int> countLocal() async => stored.length;

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
