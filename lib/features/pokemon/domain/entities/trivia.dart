class TriviaResult {
  const TriviaResult({
    required this.score,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.playedAt,
    this.id,
  });

  final int? id;
  final int score;
  final int correctAnswers;
  final int totalQuestions;
  final DateTime playedAt;
}

/// Logros con umbral documentado en el README (RF-TRV-04).
enum AchievementKind {
  firstGame,
  fiveInARow,
  perfectGame,
  tenGames,
}

class Achievement {
  const Achievement({required this.kind, required this.unlockedAt});
  final AchievementKind kind;
  final DateTime unlockedAt;
}
