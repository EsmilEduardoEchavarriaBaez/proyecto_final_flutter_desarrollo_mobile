import 'package:flutter/material.dart';

import '../../domain/entities/pokemon.dart';
import 'pokemon_image.dart';
import 'pokemon_type_chip.dart';

/// Fila del catálogo: imagen, nombre, tipos y número de un Pokémon.
class PokemonListItem extends StatelessWidget {
  const PokemonListItem({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: ListTile(
        leading: PokemonImage(imageUrl: pokemon.imageUrl),
        title: Text(_capitalize(pokemon.name), style: textTheme.titleMedium),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Wrap(
            spacing: 6,
            runSpacing: 4,
            children: [
              for (final type in pokemon.types) PokemonTypeChip(type: type),
            ],
          ),
        ),
        trailing: Text(
          _formatDexNumber(pokemon.dexNumber),
          style: textTheme.labelLarge,
        ),
      ),
    );
  }
}

/// `bulbasaur` → `Bulbasaur`
String _capitalize(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1);
}

/// `25` → `#0025`
String _formatDexNumber(int number) {
  return '#${number.toString().padLeft(4, '0')}';
}
