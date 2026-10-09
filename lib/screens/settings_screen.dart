import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(children: const [
        SwitchListTile(value: true, onChanged: null, title: Text('Workout reminders'), subtitle: Text('Sample setting for this lab')),
        SwitchListTile(value: false, onChanged: null, title: Text('Weekly summary'), subtitle: Text('Sample setting for this lab')),
        ListTile(leading: Icon(Icons.info_outline), title: Text('About FitTrack'), subtitle: Text('Flutter UI Design Lab · Experiments 1–4')),
      ]),
    );
  }
}
