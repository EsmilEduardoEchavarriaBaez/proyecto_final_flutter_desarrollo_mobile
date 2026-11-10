import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Imagen de un Pokémon.
///
/// `CachedNetworkImage` guarda la imagen en el disco la primera vez que la
/// descarga; después se muestra desde esa caché aunque no haya conexión.
/// Si no hay imagen, o no se puede cargar, se muestra un icono.
class PokemonImage extends StatelessWidget {
  const PokemonImage({super.key, required this.imageUrl, this.size = 56});

  final String? imageUrl;

  /// Ancho y alto en píxeles lógicos.
  final double size;

  @override
  Widget build(BuildContext context) {
    final placeholder = Icon(
      Icons.catching_pokemon,
      size: size * 0.6,
      color: Theme.of(context).colorScheme.outlineVariant,
    );

    final url = imageUrl;
    if (url == null) {
      return SizedBox.square(dimension: size, child: placeholder);
    }

    // La ilustración original mide 475 px. Se decodifica al tamaño en que
    // realmente se muestra para no gastar memoria de más.
    final pixelRatio = MediaQuery.devicePixelRatioOf(context);

    return CachedNetworkImage(
      imageUrl: url,
      width: size,
      height: size,
      memCacheWidth: (size * pixelRatio).round(),
      placeholder: (context, url) => placeholder,
      errorWidget: (context, url, error) => placeholder,
    );
  }
}
