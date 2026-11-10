import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Comprueba que el código respeta las reglas de dependencia entre capas,
/// leyendo los `import` de cada archivo.
void main() {
  /// Devuelve los imports prohibidos encontrados, como `archivo -> import`.
  List<String> forbiddenImports({
    required String layer,
    required List<String> forbidden,
  }) {
    final found = <String>[];
    final dartFiles = Directory(
      'lib/features',
    ).listSync(recursive: true).whereType<File>();

    for (final file in dartFiles) {
      // En Windows las rutas usan `\`; se unifican a `/` para comparar.
      final path = file.path.replaceAll(r'\', '/');
      if (!path.contains('/$layer/') || !path.endsWith('.dart')) continue;

      final imports = file.readAsLinesSync().where(
        (line) => line.startsWith('import '),
      );
      for (final line in imports) {
        if (forbidden.any(line.contains)) {
          found.add('$path -> $line');
        }
      }
    }
    return found;
  }

  test('presentation no usa GraphQL, Drift ni la capa data', () {
    final found = forbiddenImports(
      layer: 'presentation',
      forbidden: ['graphql', 'drift', 'connectivity_plus', '/data/'],
    );

    expect(found, isEmpty);
  });

  test('domain no depende de Flutter, de paquetes ni de otras capas', () {
    final found = forbiddenImports(
      layer: 'domain',
      forbidden: ['package:', '/data/', '/presentation/'],
    );

    expect(found, isEmpty);
  });
}
