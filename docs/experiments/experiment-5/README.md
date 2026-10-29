# Experiment 5 — Stateful and Stateless Widgets; State Management using setState() and Provider

## Aim
Understand the difference between stateless and stateful widgets and implement state management using `setState()` and Provider.

## Explanation
A `StatelessWidget` does not own mutable local state. A `StatefulWidget` has a `State` object that can change, and `setState()` requests a rebuild. Provider exposes state to multiple widgets without manually passing it through every constructor.

The lab manual describes a counter using `setState()` and a Provider-based variation using `ChangeNotifier`, a counter value, an increment method and `notifyListeners()`.

## Source files
- [setState water counter](../../../examples/experiment_5/setstate_main.dart)
- [Provider water counter](../../../examples/experiment_5/provider_main.dart)
- [Provider dependency](../../../pubspec.yaml)

## Run in a local Flutter project
From the repository root, run `flutter pub get`. The standalone Provider example can be launched with `flutter run -t examples/experiment_5/provider_main.dart`; the setState example can be launched with `flutter run -t examples/experiment_5/setstate_main.dart`.

## Expected output
Both examples show a water counter and buttons. Each press of **Add 250 ml** increases the counter by 250; **Reset** returns it to zero. In the Provider example, `context.watch` listens for changes and `notifyListeners()` notifies consumers.

## Verification status
The setState and ChangeNotifier patterns were demonstrated in DartPad during the walkthrough. The actual Provider-package example has been added to the repository but has not been run or analyzed in this environment. No screenshot is claimed here as committed evidence.

## Result
The source now includes both local state management and a Provider-based shared-state example.
