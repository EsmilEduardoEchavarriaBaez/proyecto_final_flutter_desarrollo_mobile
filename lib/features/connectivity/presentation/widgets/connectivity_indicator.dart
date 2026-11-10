import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/connectivity_status.dart';
import '../providers/connectivity_provider.dart';

/// Franja que indica, con icono y texto, si el dispositivo tiene conexión.
///
/// Se coloca una sola vez en `MaterialApp.builder` (ver `app.dart`), por eso
/// aparece en todas las pantallas.
class ConnectivityIndicator extends ConsumerWidget {
  const ConnectivityIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // `value` es `null` durante el instante inicial en que aún no se conoce
    // el estado de la red.
    final status = ref.watch(connectivityStatusProvider).value;

    final (label, icon, color) = switch (status) {
      ConnectivityStatus.online => (
        'En línea',
        Icons.wifi,
        Colors.green.shade800,
      ),
      ConnectivityStatus.offline => (
        'Sin conexión',
        Icons.wifi_off,
        Colors.red.shade800,
      ),
      null => ('Comprobando conexión…', Icons.wifi_find, Colors.grey.shade700),
    };

    return Material(
      color: color,
      // SafeArea evita que el contenido quede debajo de la barra de gestos.
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
