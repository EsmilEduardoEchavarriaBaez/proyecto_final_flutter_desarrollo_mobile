import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables/ability_table.dart';
import 'tables/achievement_table.dart';
import 'tables/egg_group_table.dart';
import 'tables/evolution_table.dart';
import 'tables/favorite_table.dart';
import 'tables/form_table.dart';
import 'tables/form_type_table.dart';
import 'tables/move_table.dart';
import 'tables/pokemon_ability_table.dart';
import 'tables/pokemon_egg_group_table.dart';
import 'tables/pokemon_move_table.dart';
import 'tables/pokemon_table.dart';
import 'tables/pokemon_type_table.dart';
import 'tables/stat_table.dart';
import 'tables/sync_metadata_table.dart';
import 'tables/trivia_answer_table.dart';
import 'tables/trivia_result_table.dart';
import 'tables/type_matchup_table.dart';
import 'tables/type_table.dart';

part 'app_database.g.dart';


@DriftDatabase(
  tables: [
    PokemonTable,
    TypeTable,
    PokemonTypeTable,
    StatTable,
    AbilityTable,
    PokemonAbilityTable,
    MoveTable,
    PokemonMoveTable,
    EvolutionTable,
    FormTable,
    FormTypeTable,
    EggGroupTable,
    PokemonEggGroupTable,
    TypeMatchupTable,
    TriviaResultTable,
    TriviaAnswerTable,
    AchievementTable,
    FavoriteTable,
    SyncMetadataTable,
  ],
)



class AppDatabase extends _$AppDatabase {

  AppDatabase(super.executor);


  factory AppDatabase.open() => AppDatabase(driftDatabase(name: 'pokedex'));

  /// Versión del esquema. Debe aumentar cada vez que cambien las tablas.
  @override
  int get schemaVersion => 2;


  @override
  MigrationStrategy get migration => MigrationStrategy(

    onCreate: (m) => m.createAll(),
    onUpgrade:  (m ,from , to) async
    {
      if(from < 2)
        {
          /// Se recontruye la pokeapi desde cero y la sincronizacion tambien.
          await m.deleteTable('pokemon_table');
          await m.deleteTable('sync_metadata_table');

          await m.createTable(pokemonTable);
          await m.createTable(typeTable);
          await m.createTable(pokemonTypeTable);
          await m.createTable(statTable);
          await m.createTable(abilityTable);
          await m.createTable(pokemonAbilityTable);
          await m.createTable(moveTable);
          await m.createTable(pokemonMoveTable);
          await m.createTable(evolutionTable);
          await m.createTable(formTable);
          await m.createTable(formTypeTable);
          await m.createTable(eggGroupTable);
          await m.createTable(pokemonEggGroupTable);
          await m.createTable(typeMatchupTable);
          await m.createTable(triviaResultTable);
          await m.createTable(triviaAnswerTable);
          await m.createTable(achievementTable);
          await m.createTable(syncMetadataTable);

        }



    },
    beforeOpen: (detail) async{

       await customStatement('PRAGMA foreign_keys = ON');

      },




  );

}
