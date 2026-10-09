# Experiment 4.1 — Screen navigation

## Aim
Navigate between FitTrack screens with Flutter's `Navigator` and named routes.

Named routes give each screen a stable path such as `/dashboard`, `/workouts`, and `/nutrition`. A shared route table keeps navigation configuration in one place.

## Core operations
- `Navigator.pushNamed(context, route)` opens a destination.
- `Navigator.pop(context)` returns to the previous route.
- `Navigator.pushReplacementNamed(context, route)` replaces the current screen.
- `initialRoute` determines the first route shown by the app.
