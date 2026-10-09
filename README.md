# FitTrack Flutter Lab

A fitness and nutrition tracker built for the **UI Design Flutter Lab**. The repository demonstrates the first four experiments through a small Flutter app and focused learning examples.

## Experiments

| Experiment | Topics | Implementation |
| --- | --- | --- |
| 1. Flutter and Dart fundamentals | SDK setup, variables, control flow, functions, collections, classes, null safety, async | `docs/experiments/experiment-1/` |
| 2. Widgets and layouts | `Row`, `Column`, `Stack`, reusable widgets, cards | `lib/widgets/`, `lib/screens/dashboard_screen.dart` |
| 3. Responsive UI | `MediaQuery`, `LayoutBuilder`, adaptive padding and metric grid | `lib/screens/responsive_dashboard_screen.dart` |
| 4. Navigation | `Navigator`, named routes, push/pop, bottom navigation | `lib/navigation/app_routes.dart`, `lib/screens/` |

## Run the app

Install Flutter and verify the toolchain:

```bash
flutter doctor
```

From the repository root:

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

## App screens

- **Home:** steps, activity, hydration, nutrition, and workout summary
- **Workouts:** sample training plan and a workout detail route
- **Nutrition:** sample calorie, protein, and meal summaries
- **Profile:** daily goals and a link to settings
- **Settings:** demonstration settings controls

All displayed fitness and nutrition figures are sample UI data, not health advice.

## Lab notes

Experiment notes, examples, and checklists are stored under `docs/experiments/`. Each experiment is represented by a series of focused commits so the implementation history is easy to follow.
