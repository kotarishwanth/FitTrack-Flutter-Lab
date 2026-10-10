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

## Experiment outputs

The following are the observable outputs/results for each experiment. Experiments 2–4 are demonstrated in the running FitTrack Flutter app; Experiment 1 uses Dart examples and learning exercises.

### Experiment 1 — Flutter and Dart fundamentals
- Flutter project and package configuration are set up.
- Dart examples demonstrate variables, control flow, functions, collections, classes, null safety, and asynchronous programming.
- **Expected output:** the examples produce console results or demonstrate the relevant language behavior when run; practice questions are provided in the experiment notes.

### Experiment 2 — Widgets and layouts
- The FitTrack dashboard displays a greeting/header, metric cards, workout summaries, hydration and nutrition information, and quick-action controls.
- Reusable widgets are composed into a single dashboard screen using `Row`, `Column`, and `Stack`.

### Experiment 3 — Responsive UI
- The dashboard adapts its spacing and metric layout to available screen width.
- The responsive screen demonstrates constraints-based layout with `LayoutBuilder`, screen information with `MediaQuery`, and orientation handling.

### Experiment 4 — Navigation
- The app opens on the dashboard and provides navigation to Workouts, Nutrition, Profile, and Settings.
- Selecting a workout can open its detail screen; named routes organize navigation, and push/pop examples demonstrate moving between screens and returning.

> **Evidence note:** These descriptions document the expected app and console results. To include actual visual evidence, run the app on an emulator or device, capture screenshots of the relevant screens, and add them to the repository (for example, under `docs/experiments/screenshots/`) with Markdown image links here.

## Lab notes

Experiment notes, examples, and checklists are stored under `docs/experiments/`. Each experiment is represented by a series of focused commits so the implementation history is easy to follow.
