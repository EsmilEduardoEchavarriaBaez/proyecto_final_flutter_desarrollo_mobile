import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/pokemon_catalog_providers.dart';

/// Campo de búsqueda por nombre. Espera 400 ms sin escribir antes de
/// consultar la base local (RF-CAT-03).
class PokemonSearchBar extends ConsumerStatefulWidget {
  const PokemonSearchBar({super.key});

  @override
  ConsumerState<PokemonSearchBar> createState() => _PokemonSearchBarState();
}

class _PokemonSearchBarState extends ConsumerState<PokemonSearchBar> {
  static const _debounce = Duration(milliseconds: 400);

  final _controller = TextEditingController();
  Timer? _timer;

  void _onChanged(String text) {
    _timer?.cancel();
    _timer = Timer(_debounce, () {
      ref.read(pokemonSearchQueryProvider.notifier).set(text.trim());
    });
  }

  void _clear() {
    _controller.clear();
    _timer?.cancel();
    ref.read(pokemonSearchQueryProvider.notifier).set('');
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: TextField(
        controller: _controller,
        onChanged: _onChanged,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Buscar por nombre',
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(),
          suffixIcon: ValueListenableBuilder<TextEditingValue>(
            valueListenable: _controller,
            builder: (context, value, _) => value.text.isEmpty
                ? const SizedBox.shrink()
                : IconButton(
              icon: const Icon(Icons.clear),
              tooltip: 'Limpiar búsqueda',
              onPressed: _clear,
            ),
          ),
        ),
      ),
    );
  }
}