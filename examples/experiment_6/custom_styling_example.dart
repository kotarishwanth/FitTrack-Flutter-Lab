import 'package:flutter/material.dart';

void main() => runApp(const StylingDemo());

class StylingDemo extends StatelessWidget {
  const StylingDemo({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF287D68)),
      useMaterial3: true,
      cardTheme: const CardThemeData(elevation: 3, margin: EdgeInsets.zero),
    ),
    home: const StylingScreen(),
  );
}

class StylingScreen extends StatelessWidget {
  const StylingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Experiment 6: Custom Styling')),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Your Fitness', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16),
          const ActivityCard(title: 'Daily Steps', value: '8,500', icon: Icons.directions_walk),
          const SizedBox(height: 12),
          const ActivityCard(title: 'Water Intake', value: '2.0 L', icon: Icons.water_drop),
          const SizedBox(height: 12),
          const ActivityCard(title: 'Workout', value: '30 minutes', icon: Icons.fitness_center),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Keep up your progress!')),
            ),
            icon: const Icon(Icons.check_circle),
            label: const Text('Complete Today'),
          ),
        ],
      ),
    ),
  );
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const ActivityCard({super.key, required this.title, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      child: ListTile(
        leading: Icon(icon, color: colors.primary, size: 30),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(value),
      ),
    );
  }
}
