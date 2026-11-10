import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_final_flutter_desarrollo_mobile/features/pokemon/data/sync/sync_coordinator.dart';

void main() {
  test('dos peticiones simultáneas ejecutan la tarea una sola vez', () async {
    final coordinator = SyncCoordinator();
    final taskFinished = Completer<void>();
    var executions = 0;

    Future<void> task() {
      executions++;
      return taskFinished.future;
    }

    final first = coordinator.run(task);
    final second = coordinator.run(task);
    taskFinished.complete();
    await Future.wait([first, second]);

    expect(executions, 1);
  });

  test('al terminar una tarea se puede ejecutar otra', () async {
    final coordinator = SyncCoordinator();
    var executions = 0;

    await coordinator.run(() async => executions++);
    await coordinator.run(() async => executions++);

    expect(executions, 2);
  });

  test('si la tarea falla, el error llega a quien la pidió', () async {
    final coordinator = SyncCoordinator();

    await expectLater(
      coordinator.run(() async => throw StateError('falló')),
      throwsStateError,
    );

    // Después del fallo se puede volver a intentar.
    var executed = false;
    await coordinator.run(() async => executed = true);
    expect(executed, isTrue);
  });
}
