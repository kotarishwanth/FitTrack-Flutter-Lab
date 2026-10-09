double calculateProgress({required double current, required double goal}) {
  if (goal <= 0) return 0;
  return (current / goal).clamp(0.0, 1.0);
}

void main() {
  final progress = calculateProgress(current: 1800, goal: 2500);
  print('Water progress: ${(progress * 100).round()}%');
}
