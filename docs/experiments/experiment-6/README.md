# Experiment 6 — Custom Widgets and Styling in Flutter

## Aim
Create reusable custom widgets and apply themes and custom styles to UI elements.

## Explanation
A custom widget encapsulates an interface element for reuse. `ThemeData` supplies shared colors and component styling, while `Theme.of(context)` accesses theme properties. The activity card accepts a title, value and icon so the same component can be reused for different metrics.

## Source files
- [Standalone custom styling example](../../../examples/experiment_6/custom_styling_example.dart)
- [FitTrack app theme](../../../lib/main.dart)
- [Existing reusable metric card](../../../lib/widgets/metric_card.dart)

## Run
From the repository root, run `flutter run -t examples/experiment_6/custom_styling_example.dart`.

## Expected output
The screen displays a heading, three activity cards (Daily Steps, Water Intake and Workout) and a themed button. Pressing **Complete Today** displays a SnackBar.

## Verification status
The same general card-and-theme concept was demonstrated in DartPad during the walkthrough. The standalone repository file has been added but has not been run or analyzed here. No screenshot is claimed as committed evidence.

## Result
The example demonstrates reusable custom widgets, shared theme configuration and a themed Material button.
