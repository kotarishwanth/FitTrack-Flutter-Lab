# FitTrack Flutter Lab

A Flutter lab project for **UI Design using Flutter Lab (CS506PC)**. This repository contains the FitTrack app, experiment-wise Dart/Flutter examples, documentation, and DartPad screenshot evidence.

> **Screenshot note:** The screenshots below show individual examples executed in DartPad; they are not proof that the complete Flutter app builds or that `flutter analyze` / `flutter test` pass. Those commands have not been verified in this session.

## Experiment index

| Experiment | Topic | Code / documentation |
|---|---|---|
| 1 | Dart basics | [Experiment 1 examples](docs/experiments/experiment-1/) |
| 2 | Flutter widgets and layouts | [Experiment 2 examples](docs/experiments/experiment-2/) |
| 3 | Responsive UI and MediaQuery | [Experiment 3 examples](docs/experiments/experiment-3/) |
| 4 | Navigation and named routes | [Experiment 4 examples](docs/experiments/experiment-4/) |
| 5 | Stateful/stateless widgets and state management | [setState example](examples/experiment_5/setstate_main.dart) · [Provider example](examples/experiment_5/provider_main.dart) |
| 6 | Custom widgets and styling | [Styling example](examples/experiment_6/custom_styling_example.dart) |
| 7 | Form validation | [Form validation example](examples/experiment_7/form_validation_example.dart) |
| 8 | Animations | [Animation example](examples/experiment_8/animations_example.dart) |

## Screenshot evidence

These image files are currently in the repository root. Select an image to view it.

### Experiment 1 — Dart basics
- [Variables output](experiment-1-variables-output.png)
- [Control flow output](experiment-1-control-flow-output.png)
- [Collections output](experiment-1-collections-output.png)
- [Classes output](experiment-1-classes-output.png)
- [Null safety output](experiment-1-null-safety-output.png)
- [Async output](experiment-1-async-output.png)

### Experiment 2 — Flutter layouts
- [Initial layout](experiment-2-layouts-initial.png)
- [Final layout](experiment-2-layouts-final.png)

### Experiment 3 — Responsive UI
- [Responsive UI](experiment-3-responsive-ui.png)

### Experiment 4 — Navigation screens
- [Home screen](experiment-4-home-screen.png)
- [Workout details](experiment-4-workout-details.png)

### Experiment 5 — State management
- [setState water tracker](experiment-5-setstate-water-tracker.png)
- [ChangeNotifier water tracker](experiment-5-changenotifier-water-tracker.png)

### Experiment 6 — Custom styling
- [Custom theme](experiment-6-custom-theme.png)

### Experiment 7 — Form validation
- [Form validation](experiment-7-form-validation.png)

### Experiment 8 — Animations
- [Visible state](experiment-8-animation-visible.png)
- [Faded state](experiment-8-animation-faded.png)

## Run the Flutter project

Install the Flutter SDK and configure an emulator, device, or supported desktop/browser target. From the repository root, run:

```bash
flutter doctor
flutter pub get
flutter analyze
flutter test
flutter run
```

These are the commands to verify the project locally; do not treat the screenshot evidence as a substitute for running them.

## Repository structure

- `lib/` — FitTrack app source
- `docs/experiments/` — experiment notes and standalone examples
- `examples/` — focused examples for Experiments 5–8
- `test/` — test source
