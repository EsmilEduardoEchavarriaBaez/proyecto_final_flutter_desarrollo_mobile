

class SyncCoordinator {

  bool  _running =false;

  Future<void> run(Future<void> Function () task)async
  {
    if(_running) return;
    _running = true;
    try
        {
          await task ();

        }finally {
      _running = false;
    }


  }


}