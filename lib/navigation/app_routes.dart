import 'package:flutter/material.dart';
import '../screens/nutrition_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/workout_detail_screen.dart';
import '../screens/workouts_screen.dart';
import '../screens/responsive_dashboard_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const dashboard = '/dashboard';
  static const workouts = '/workouts';
  static const workoutDetail = '/workout-detail';
  static const nutrition = '/nutrition';
  static const profile = '/profile';
  static const settings = '/settings';

  static Map<String, WidgetBuilder> get routes => {
    dashboard: (_) => const ResponsiveDashboardScreen(),
    workouts: (_) => const WorkoutsScreen(),
    workoutDetail: (_) => const WorkoutDetailScreen(),
    nutrition: (_) => const NutritionScreen(),
    profile: (_) => const ProfileScreen(),
    settings: (_) => const SettingsScreen(),
  };
}
