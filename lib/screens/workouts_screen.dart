import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';
import '../widgets/fittrack_navigation_bar.dart';
import '../widgets/section_heading.dart';
import '../widgets/workout_tile.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workouts')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const SectionHeading(title: 'Your plan'),
        const WorkoutTile(title: 'Push workout', subtitle: 'Upper body · 25 minutes', icon: Icons.fitness_center, completed: true),
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.directions_walk)),
          title: const Text('Evening walk'),
          subtitle: const Text('Cardio · 20 minutes'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.pushNamed(context, AppRoutes.workoutDetail),
        ),
        const WorkoutTile(title: 'Mobility', subtitle: 'Recovery · 10 minutes', icon: Icons.self_improvement),
      ]),
      bottomNavigationBar: const FitTrackNavigationBar(selectedIndex: 1),
    );
  }
}
