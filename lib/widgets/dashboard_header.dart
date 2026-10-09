import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key, this.userName = 'Athlete'});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Good day, $userName', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text('Small steps add up.', style: Theme.of(context).textTheme.bodyMedium),
        ])),
        const CircleAvatar(radius: 24, child: Icon(Icons.person_outline, size: 28)),
      ],
    );
  }
}
