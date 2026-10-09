void main() {
  const int waterConsumedMl = 1500;
  const int waterGoalMl = 2500;

  if (waterConsumedMl >= waterGoalMl) {
    print('Water goal reached.');
  } else {
    print('Drink ${waterGoalMl - waterConsumedMl} ml more to reach the goal.');
  }

  for (var day = 1; day <= 3; day++) {
    print('Workout plan day $day');
  }
}
