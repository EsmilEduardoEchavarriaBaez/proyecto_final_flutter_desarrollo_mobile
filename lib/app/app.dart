import 'package:flutter/material.dart';

import '../features/connectivity/presentation/widgets/connectivity_indicator.dart';
import '../features/pokemon/presentation/pages/pokemon_list_page.dart';

/// Widget raíz: configura el tema y la pantalla inicial.
class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',  debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white30),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      // `builder` envuelve al navegador de pantallas: lo que se coloca aquí
      // queda visible en toda la app. Por eso el indicador de conectividad
      // es global y no hay que repetirlo en cada pantalla.
      builder: (context, child) => Scaffold(
        body: child,
        bottomNavigationBar: const ConnectivityIndicator(),
      ),
      home: const PokemonListPage(),
    );
  }
}
