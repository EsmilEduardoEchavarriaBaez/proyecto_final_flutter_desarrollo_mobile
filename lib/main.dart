import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';

void main() {
  // No se espera (`await`) nada antes de `runApp`: la interfaz aparece de
  // inmediato y los datos se cargan después, en segundo plano.
  //
  // `ProviderScope` guarda el estado de todos los providers de Riverpod.
  runApp(const ProviderScope(child: PokedexApp()));
}
