import 'package:flutter/material.dart';

class LayoutPractice extends StatelessWidget {
  const LayoutPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.fitness_center, size: 32),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Strength session'), Text('3 exercises planned')],
              ),
            ),
            Icon(Icons.chevron_right, color: Theme.of(context).colorScheme.outline),
          ],
        ),
      ),
    );
  }
}
