import 'package:flutter/material.dart';

class WorkoutDetailScreen extends StatelessWidget {
  const WorkoutDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Evening walk')),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        const Icon(Icons.directions_walk, size: 72),
        const SizedBox(height: 16),
        Text('20-minute walk', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 8),
        const Text('A light cardio session to support your daily activity goal.', textAlign: TextAlign.center),
        const SizedBox(height: 24),
        const ListTile(leading: Icon(Icons.timer_outlined), title: Text('Duration'), trailing: Text('20 min')),
        const ListTile(leading: Icon(Icons.flag_outlined), title: Text('Goal'), trailing: Text('Easy pace')),
        FilledButton.icon(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back), label: const Text('Back to workouts')),
      ]),
    );
  }
}
