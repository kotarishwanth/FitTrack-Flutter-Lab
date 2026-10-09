class DailyGoal {
  const DailyGoal({required this.label, required this.target, required this.unit});

  final String label;
  final double target;
  final String unit;

  String describe() => '$label target: $target $unit';
}

void main() {
  const goal = DailyGoal(label: 'Water', target: 2500, unit: 'ml');
  print(goal.describe());
}
