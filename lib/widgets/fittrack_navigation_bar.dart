import 'package:flutter/material.dart';
import '../navigation/app_routes.dart';

class FitTrackNavigationBar extends StatelessWidget {
  const FitTrackNavigationBar({super.key, required this.selectedIndex});

  final int selectedIndex;

  static const _routes = [
    AppRoutes.dashboard,
    AppRoutes.workouts,
    AppRoutes.nutrition,
    AppRoutes.profile,
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        if (index != selectedIndex) {
          Navigator.pushReplacementNamed(context, _routes[index]);
        }
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.dashboard_outlined), selectedIcon: Icon(Icons.dashboard), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.fitness_center_outlined), selectedIcon: Icon(Icons.fitness_center), label: 'Workouts'),
        NavigationDestination(icon: Icon(Icons.restaurant_outlined), selectedIcon: Icon(Icons.restaurant), label: 'Nutrition'),
        NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
