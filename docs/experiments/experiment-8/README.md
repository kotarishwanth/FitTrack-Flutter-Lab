# Experiment 8 — Animations in Flutter

## Aim
Add animations to UI elements using Flutter's animation widgets.

## Explanation
The lab manual covers animated property changes and fade/slide effects. `AnimatedContainer` animates size, color and corner radius; `AnimatedOpacity` fades the card; `AnimatedSlide` moves it vertically.

## Source file
- [Animation example](../../../examples/experiment_8/animations_example.dart)

## Run
From the repository root, run `flutter run -t examples/experiment_8/animations_example.dart`.

## Expected behavior
- Tap the workout card to animate its size, color and border radius.
- Use **Fade Out / Fade In** to animate opacity.
- Use **Slide Out / Slide In** to animate vertical position.

## Verification status
The AnimatedContainer and fade behavior were demonstrated in DartPad during the walkthrough. The standalone repository example now also includes slide animation, but that additional behavior has not been run or analyzed here. No screenshot is claimed as committed evidence.

## Result
The source demonstrates implicit animations for container properties, opacity and position.
