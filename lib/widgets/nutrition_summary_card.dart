import 'package:flutter/material.dart';

class NutritionSummaryCard extends StatelessWidget {
  const NutritionSummaryCard({super.key, this.calories = 1450, this.calorieGoal = 2200, this.proteinGrams = 82});

  final int calories;
  final int calorieGoal;
  final int proteinGrams;

  @override
  Widget build(BuildContext context) {
    final progress = calorieGoal <= 0 ? 0.0 : (calories / calorieGoal).clamp(0.0, 1.0);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Nutrition today'),
          const SizedBox(height: 8),
          Text('$calories kcal', style: Theme.of(context).textTheme.headlineSmall),
          Text('Goal: $calorieGoal kcal'),
          const SizedBox(height: 10),
          LinearProgressIndicator(value: progress),
          const SizedBox(height: 12),
          Row(children: [const Icon(Icons.egg_alt_outlined), const SizedBox(width: 8), Text('$proteinGrams g protein')]),
        ]),
      ),
    );
  }
}
