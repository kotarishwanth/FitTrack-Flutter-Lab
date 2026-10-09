# Experiment 4.2 — Named routes

The route table is defined in `lib/navigation/app_routes.dart`.

```dart
MaterialApp(
  initialRoute: AppRoutes.dashboard,
  routes: AppRoutes.routes,
)
```

Navigate to a destination with:

```dart
Navigator.pushNamed(context, AppRoutes.nutrition);
```

Return from a pushed screen with `Navigator.pop(context)`. For bottom navigation, FitTrack uses `pushReplacementNamed` so switching tabs does not keep adding tab roots to the back stack.
