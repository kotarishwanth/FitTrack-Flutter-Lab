import 'package:flutter/material.dart';

class WaterProgressCard extends StatelessWidget {
  const WaterProgressCard({super.key, required this.consumedMl, this.goalMl = 2500});

  final int consumedMl;
  final int goalMl;

  @override
  Widget build(BuildContext context) {
    final progress = goalMl <= 0 ? 0.0 : (consumedMl / goalMl).clamp(0.0, 1.0);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(children: [Icon(Icons.water_drop, color: Colors.blue), SizedBox(width: 8), Text('Hydration')]),
          const SizedBox(height: 12),
          Text('$consumedMl / $goalMl ml', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          LinearProgressIndicator(value: progress, minHeight: 8, borderRadius: BorderRadius.circular(8)),
          const SizedBox(height: 8),
          Text('${(progress * 100).round()}% of daily goal'),
        ]),
      ),
    );
  }
}
