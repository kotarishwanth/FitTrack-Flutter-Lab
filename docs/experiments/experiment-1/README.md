# Experiment 1 — Flutter and Dart Fundamentals

## Aim
Understand the Dart language concepts used when developing Flutter applications: variables and data types, control flow, functions, collections, classes and objects, null safety, and asynchronous programming.

## Tools
- DartPad: https://dartpad.dev/
- No local Flutter SDK is required to run the Dart console examples in DartPad.

## Procedure
1. Open DartPad and select a Dart console example.
2. Run the focused examples in the files listed below, or run the combined example.
3. Compare the console output with the expected results in the examples and the lab notes.
4. Change values and run again to observe how the output changes.

## Examples
- [SDK setup notes](01-sdk-setup.md)
- [Variables and data types](02-dart-variables.dart)
- [Complete Dart fundamentals example](05-complete-dart-fundamentals.dart)

The combined example covers:
- Variables: `String`, `int`, `double`, and `bool`
- Control flow: `if-else` and `for`
- Functions, `List`, and `Map`
- Classes, constructors, objects, and methods
- Nullable types (`String?`) and the null-coalescing operator (`??`)
- `Future`, `async`, and `await`

## Observed outputs
The focused examples were run in DartPad during the lab walkthrough. Observed outputs included:
- Variables example: FitTrack app name, water goal, weight, and workout status printed.
- Control-flow example: the 8,500-step value was 1,500 below the 10,000-step goal, followed by seven sample daily step values.
- Collections example: the average of `[6500, 8000, 9500, 7000, 11000]` was `8400.0`; adding another day appended `12000`; the fitness goals map printed its entries.
- Class example: Running (30 minutes, 250 kcal) and Push-ups (15 minutes, 100 kcal) details printed.
- Null-safety example: a nullable nickname printed as `null`, then the assigned nickname `Rishi` was used as the display name. DartPad's analyzer also showed warnings that the fallback branch was unreachable after the variable had been assigned; the output was still produced.
- Async example: `Loading workout...`, then `Workout data loaded successfully!`, then `Program completed.` printed in that order after the delay.

## Result
The examples demonstrated the core Dart fundamentals required before proceeding to Flutter widgets.

## Screenshots
Screenshots were captured during the online DartPad runs. To store them with the repository, add the genuine screenshots under `docs/experiments/screenshots/` and link them here. No screenshot files are claimed to be committed yet.
