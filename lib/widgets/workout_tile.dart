import 'package:flutter/material.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({super.key, required this.title, required this.subtitle, required this.icon, this.completed = false});

  final String title;
  final String subtitle;
  final IconData icon;
  final bool completed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(icon)),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(completed ? Icons.check_circle : Icons.radio_button_unchecked,
          color: completed ? Colors.green : Theme.of(context).colorScheme.outline),
    );
  }
}
