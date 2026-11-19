import 'pokemon.dart';



class PokemonDetail {

  const PokemonDetail({

    required this.pokemon,
    required this.heightM,
    required this.weightKg,
    required this.eggGroups,
    required this.stats,
    required this.abilities,
    required this.evolutions,
    required this.moves,
    required this.forms,
    required this.typeMatchups,




});


  final Pokemon pokemon;
  final double heightM;
  final double weightKg;
  final List<String> eggGroups;
  final List<PokemonStat> stats;
  final List<PokemonAbility> abilities;
  final List<PokemonEvolution> evolutions;
  final List<PokemonMove> moves;
  final List<PokemonForm> forms;

  final Map<String, double> typeMatchups;


  int get baseTotal => stats.fold(0, (sum, stat)=> sum + stat.baseValue);

}

class PokemonStat{

  const PokemonStat({required this.name, required this.baseValue});
  final String name; // hp, attack, defense, special-attack, special-defense, speed
  final int baseValue;

}

class PokemonAbility {

  const PokemonAbility({
    required this.name,
    required this.isHidden,
    this.effectSummary,
  });
  final String name;
  final bool isHidden;
  final String? effectSummary;


}


class PokemonEvolution {
  const PokemonEvolution({
    required this.fromId,
    required this.toId,
    required this.trigger,
    this.minLevel,
  });
  final int fromId;
  final int toId;
  final String trigger; // level-up, use-item, trade, happiness, time-of-day...
  final int? minLevel;


}


class PokemonMove {
  const PokemonMove({
    required this.name,
    required this.versionGroup,
    required this.learnMethod,
    this.levelLearned,
  });
  final String name;
  final String versionGroup;
  final String learnMethod; // level-up, machine, tutor, egg
  final int? levelLearned;



}

class PokemonForm{
  const PokemonForm({
    required this.name,
    required this.types,
    this.imageUrl,
    this.isDefault = false,
  });
  final String name; // charizard-mega-x, raichu-alola...
  final List<String> types;
  final String? imageUrl;
  final bool isDefault;



}