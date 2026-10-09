import 'package:flutter/material.dart';
import '../widgets/adaptive_page_padding.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/fittrack_navigation_bar.dart';
import '../widgets/nutrition_summary_card.dart';
import '../widgets/responsive_metric_grid.dart';
import '../widgets/section_heading.dart';
import '../widgets/water_progress_card.dart';
import '../widgets/workout_tile.dart';

class ResponsiveDashboardScreen extends StatelessWidget {
  const ResponsiveDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final wide = screenWidth >= 900;
    const progressColumn = Column(
      children: [WaterProgressCard(consumedMl: 1500), SizedBox(height: 12), NutritionSummaryCard()],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('FitTrack'),
        actions: [
          IconButton(
            tooltip: 'Profile',
            onPressed: () => Navigator.pushNamed(context, '/profile'),
            icon: const Icon(Icons.person_outline),
          ),
          IconButton(
            tooltip: 'Settings',
            onPressed: () => Navigator.pushNamed(context, '/settings'),
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: AdaptivePagePadding(
        child: ListView(
          children: [
            const DashboardHeader(),
            const SizedBox(height: 20),
            const ResponsiveMetricGrid(),
            const SizedBox(height: 20),
            if (wide)
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Expanded(child: _WorkoutSection()),
                const SizedBox(width: 16),
                const Expanded(child: progressColumn),
              ])
            else ...[
              progressColumn,
              const SizedBox(height: 18),
              const _WorkoutSection(),
            ],
          ],
        ),
      ),
      bottomNavigationBar: const FitTrackNavigationBar(selectedIndex: 0),
    );
  }
}

class _WorkoutSection extends StatelessWidget {
  const _WorkoutSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: 'Today’s workout'),
        WorkoutTile(title: 'Push workout', subtitle: 'Push-ups · Shoulder press · Triceps', icon: Icons.fitness_center, completed: true),
        WorkoutTile(title: 'Evening walk', subtitle: '20 minutes planned', icon: Icons.directions_walk),
      ],
    );
  }
}
