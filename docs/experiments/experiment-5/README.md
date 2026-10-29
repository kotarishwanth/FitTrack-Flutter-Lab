# Experiment 5 — Stateful and Stateless Widgets; State Management using setState() and Provider

## Aim
To understand the difference between stateless and stateful widgets and implement state management using `setState()` and the Provider package.

## Explanation
A `StatelessWidget` does not own mutable local state. A `StatefulWidget` has a `State` object that can be changed, with `setState()` requesting a rebuild. Provider can expose state to multiple widgets without passing it through every constructor.

The lab-manual pages for Experiment 5 show a counter example using `setState()` and a Provider-based variation using `ChangeNotifier`, a counter value, an increment method and `notifyListeners()`.

## Program/source links
- [FitTrack app and current theme](../../../lib/main.dart)
- [Current dependencies](../../../pubspec.yaml)
- Standalone comparison program: `state_management_example.dart` (to be added).

## Expected output
A visible counter should increase after pressing an **Increment** button. The Provider version should update listening UI after the model notifies listeners. These are expected behaviors, not yet tested output.

## Output screenshot
Pending: `../screenshots/experiment-5-state-management.png`.

## Result
The experiment compares local state updates with shared state management. The Provider example and dependency are still pending implementation.