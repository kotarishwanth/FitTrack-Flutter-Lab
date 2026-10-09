import 'package:flutter/material.dart';
import 'metric_card.dart';

class ResponsiveMetricGrid extends StatelessWidget {
  const ResponsiveMetricGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = const [
      MetricCard(label: 'Steps', value: '4,820', unit: 'of 8,000', icon: Icons.directions_walk, color: Colors.teal),
      MetricCard(label: 'Active', value: '32', unit: 'minutes', icon: Icons.bolt, color: Colors.orange),
      MetricCard(label: 'Sleep', value: '7.5', unit: 'hours', icon: Icons.bedtime_outlined, color: Colors.indigo),
      MetricCard(label: 'Workouts', value: '3', unit: 'this week', icon: Icons.fitness_center, color: Colors.purple),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = constraints.maxWidth >= 700 ? 4 : constraints.maxWidth >= 420 ? 2 : 1;
        const spacing = 12.0;
        final itemWidth = (constraints.maxWidth - spacing * (columns - 1)) / columns;
        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: metrics.map((metric) => SizedBox(width: itemWidth, child: metric)).toList(),
        );
      },
    );
  }
}
