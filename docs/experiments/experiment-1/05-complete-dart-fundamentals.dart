// Experiment 1: Dart fundamentals for FitTrack
// Run with DartPad (https://dartpad.dev/) or a Dart SDK.

class Workout {
  final String name;
  final int durationMinutes;
  final int caloriesBurned;

  const Workout(this.name, this.durationMinutes, this.caloriesBurned);

  void displayDetails() {
    print('Workout: $name');
    print('Duration: $durationMinutes minutes');
    print('Calories burned: $caloriesBurned kcal');
  }
}

double calculateAverage(List<int> steps) {
  if (steps.isEmpty) return 0;
  var total = 0;
  for (final step in steps) {
    total += step;
  }
  return total / steps.length;
}

Future<String> fetchWorkout() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Workout data loaded successfully!';
}

Future<void> main() async {
  // Variables and data types
  final String appName = 'FitTrack';
  const int dailyWaterGoalMl = 2500;
  double bodyWeightKg = 62.0;
  bool workoutCompleted = false;
  print('App: $appName');
  print('Water goal: $dailyWaterGoalMl ml');
  print('Weight: $bodyWeightKg kg');
  print('Workout completed: $workoutCompleted');

  // Control flow and loops
  const dailySteps = 8500;
  const stepGoal = 10000;
  if (dailySteps >= stepGoal) {
    print('Goal achieved!');
  } else {
    print('Keep going! You are ${stepGoal - dailySteps} steps away.');
  }
  for (var day = 1; day <= 7; day++) {
    print('Day $day: ${day * 1000} steps');
  }

  // Functions, lists, and maps
  final weeklySteps = <int>[6500, 8000, 9500, 7000, 11000];
  print('Average steps: ${calculateAverage(weeklySteps)}');
  weeklySteps.add(12000);
  print('Updated steps: $weeklySteps');
  final fitnessGoals = <String, int>{
    'Steps': 10000,
    'Water (ml)': 2500,
    'Workout (minutes)': 45,
  };
  fitnessGoals.forEach((goal, value) => print('$goal: $value'));

  // Classes and objects
  const running = Workout('Running', 30, 250);
  const pushUps = Workout('Push-ups', 15, 100);
  running.displayDetails();
  pushUps.displayDetails();

  // Null safety
  String? nickname;
  print('Nickname: $nickname');
  nickname = 'Rishi';
  final displayName = nickname ?? 'Guest';
  print('Display name: $displayName');

  // Asynchronous programming
  print('Loading workout...');
  final result = await fetchWorkout();
  print(result);
  print('Program completed.');
}
