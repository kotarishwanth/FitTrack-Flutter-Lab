import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';
import '../widgets/fittrack_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(padding: const EdgeInsets.all(24), children: [
        const CircleAvatar(radius: 42, child: Icon(Icons.person, size: 44)),
        const SizedBox(height: 12),
        Text('Your fitness profile', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 24),
        const ListTile(leading: Icon(Icons.flag_outlined), title: Text('Daily activity goal'), subtitle: Text('8,000 steps')),
        const ListTile(leading: Icon(Icons.water_drop_outlined), title: Text('Hydration target'), subtitle: Text('2,500 ml')),
        ListTile(leading: const Icon(Icons.settings_outlined), title: const Text('Settings'), trailing: const Icon(Icons.chevron_right), onTap: () => Navigator.pushNamed(context, AppRoutes.settings)),
      ]),
      bottomNavigationBar: const FitTrackNavigationBar(selectedIndex: 3),
    );
  }
}
