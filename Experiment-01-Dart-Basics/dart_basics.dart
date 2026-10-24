// Experiment 1: Dart basics
// FitTrack - a small console program for practising Dart fundamentals.

void main() {
  String studentProject = 'FitTrack';
  int dailyStepGoal = 8000;
  int stepsWalked = 5200;
  double workoutMinutes = 25.5;
  bool goalCompleted = stepsWalked >= dailyStepGoal;

  print('Project: $studentProject');
  print('Steps walked: $stepsWalked');
  print('Daily step goal: $dailyStepGoal');

  // A simple condition to check the daily goal.
  if (goalCompleted) {
    print('Great work! You reached your step goal.');
  } else {
    int stepsLeft = dailyStepGoal - stepsWalked;
    print('Keep going! $stepsLeft steps left to reach your goal.');
  }

  // A loop to show a few example workout days.
  List<int> weeklySteps = [4200, 6100, 5200, 7800, 8300];

  print('\nSteps recorded this week:');
  for (int day = 0; day < weeklySteps.length; day++) {
    print('Day ${day + 1}: ${weeklySteps[day]} steps');
  }

  // A function keeps a calculation reusable.
  int calculateRemainingSteps(int goal, int currentSteps) {
    if (currentSteps >= goal) {
      return 0;
    }
    return goal - currentSteps;
  }

  print(
    '\nRemaining steps: '
    '${calculateRemainingSteps(dailyStepGoal, stepsWalked)}',
  );
  print('Workout duration: $workoutMinutes minutes');
}
