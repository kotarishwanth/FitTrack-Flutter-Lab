void main() {
  final List<String> workouts = ['Push-ups', 'Squats', 'Pull-ups'];
  final Map<String, int> caloriesByMeal = {
    'Breakfast': 420,
    'Lunch': 650,
    'Dinner': 540,
  };

  workouts.add('Walking');
  print('Workouts: ${workouts.join(', ')}');
  print('Daily sample calories: ${caloriesByMeal.values.reduce((a, b) => a + b)}');
}
