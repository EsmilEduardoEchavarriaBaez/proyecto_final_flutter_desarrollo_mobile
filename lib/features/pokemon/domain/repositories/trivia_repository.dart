import '../entities/trivia.dart';

abstract class TriviaRepository {


  Stream<List<TriviaResult>> watchRanking({int limit = 10});
  Stream<List<Achievement>> watchAchievements();
  Future<void> saveResult(TriviaResult result);
  Future<void> unlock(AchievementKind kind);
}