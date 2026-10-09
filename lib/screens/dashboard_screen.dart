import 'package:flutter/material.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/metric_card.dart';
import '../widgets/nutrition_summary_card.dart';
import '../widgets/section_heading.dart';
import '../widgets/water_progress_card.dart';
import '../widgets/workout_tile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FitTrack'), actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none))]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const DashboardHeader(),
          const SizedBox(height: 20),
          const Row(children: [
            Expanded(child: MetricCard(label: 'Steps', value: '4,820', unit: 'of 8,000', icon: Icons.directions_walk, color: Colors.teal)),
            SizedBox(width: 12),
            Expanded(child: MetricCard(label: 'Active', value: '32', unit: 'minutes', icon: Icons.bolt, color: Colors.orange)),
          ]),
          const SizedBox(height: 18),
          const WaterProgressCard(consumedMl: 1500),
          const SizedBox(height: 12),
          const NutritionSummaryCard(),
          const SizedBox(height: 18),
          const SectionHeading(title: 'Today’s workout', actionLabel: 'View all'),
          const WorkoutTile(title: 'Push workout', subtitle: 'Push-ups · Shoulder press · Triceps', icon: Icons.fitness_center, completed: true),
          const WorkoutTile(title: 'Evening walk', subtitle: '20 minutes planned', icon: Icons.directions_walk),
        ],
      ),
    );
  }
}
