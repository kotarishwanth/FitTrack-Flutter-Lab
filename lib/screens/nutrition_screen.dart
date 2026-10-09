import 'package:flutter/material.dart';
import '../widgets/fittrack_navigation_bar.dart';
import '../widgets/nutrition_summary_card.dart';
import '../widgets/section_heading.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nutrition')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const NutritionSummaryCard(),
        const SizedBox(height: 20),
        const SectionHeading(title: 'Today’s meals'),
        const ListTile(leading: Icon(Icons.breakfast_dining), title: Text('Breakfast'), subtitle: Text('Oats, milk, and eggs'), trailing: Text('420 kcal')),
        const ListTile(leading: Icon(Icons.lunch_dining), title: Text('Lunch'), subtitle: Text('Rice, dal, and curd'), trailing: Text('650 kcal')),
        const ListTile(leading: Icon(Icons.dinner_dining), title: Text('Dinner'), subtitle: Text('Sample meal entry'), trailing: Text('380 kcal')),
        const SizedBox(height: 8),
        Text('Nutrition figures are sample values for UI practice.', style: Theme.of(context).textTheme.bodySmall),
      ]),
      bottomNavigationBar: const FitTrackNavigationBar(selectedIndex: 2),
    );
  }
}
