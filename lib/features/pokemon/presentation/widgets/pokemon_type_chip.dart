import 'package:flutter/material.dart';

/// Nombre en español y color de cada tipo. La clave es el nombre que envía
/// PokeAPI.
const Map<String, ({String label, Color color})> _typeStyles = {
  'normal': (label: 'Normal', color: Color(0xFFA8A77A)),
  'fire': (label: 'Fuego', color: Color(0xFFEE8130)),
  'water': (label: 'Agua', color: Color(0xFF6390F0)),
  'electric': (label: 'Eléctrico', color: Color(0xFFF7D02C)),
  'grass': (label: 'Planta', color: Color(0xFF7AC74C)),
  'ice': (label: 'Hielo', color: Color(0xFF96D9D6)),
  'fighting': (label: 'Lucha', color: Color(0xFFC22E28)),
  'poison': (label: 'Veneno', color: Color(0xFFA33EA1)),
  'ground': (label: 'Tierra', color: Color(0xFFE2BF65)),
  'flying': (label: 'Volador', color: Color(0xFFA98FF3)),
  'psychic': (label: 'Psíquico', color: Color(0xFFF95587)),
  'bug': (label: 'Bicho', color: Color(0xFFA6B91A)),
  'rock': (label: 'Roca', color: Color(0xFFB6A136)),
  'ghost': (label: 'Fantasma', color: Color(0xFF735797)),
  'dragon': (label: 'Dragón', color: Color(0xFF6F35FC)),
  'dark': (label: 'Siniestro', color: Color(0xFF705746)),
  'steel': (label: 'Acero', color: Color(0xFFB7B7CE)),
  'fairy': (label: 'Hada', color: Color(0xFFD685AD)),
};

/// Luminancia a partir de la cual el texto negro contrasta más que el blanco.
const double _lightBackgroundLuminance = 0.179;

/// Etiqueta de color con el tipo de un Pokémon.
class PokemonTypeChip extends StatelessWidget {
  const PokemonTypeChip({super.key, required this.type});

  /// Nombre del tipo tal como lo envía PokeAPI. Ejemplo: `grass`.
  final String type;

  @override
  Widget build(BuildContext context) {
    // Un tipo que no esté en la tabla se muestra en gris con su nombre.
    final style = _typeStyles[type];
    final color = style?.color ?? Colors.grey;
    final label = style?.label ?? type;

    // Texto negro sobre colores claros y blanco sobre oscuros, para que
    // siempre se pueda leer.
    final isLightBackground =
        color.computeLuminance() > _lightBackgroundLuminance;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: isLightBackground ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
