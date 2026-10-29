# FitTrack Flutter Lab

A Flutter fitness and nutrition tracker developed for the **UI Design using Flutter Lab (CS506PC)**. The project demonstrates the lab-manual topics through the FitTrack app and focused, experiment-wise learning examples.

> **Documentation note:** Experiment titles and order in this README follow the uploaded ACE Engineering College lab manual. Code links point to files currently present in this repository. Outputs described as *expected* have not been presented as tested results. Screenshots should be captured from a running app or program and committed as separate image files; no fabricated screenshots are included.

## Project overview

FitTrack is a sample fitness and nutrition UI with dashboard metrics, workout screens, hydration and nutrition summaries, profile/settings pages, responsive layout, and named navigation. Displayed fitness values are illustrative UI data, not health advice.

## Setup and run

Prerequisites: Flutter SDK, Dart SDK (included with Flutter), and a configured target such as an Android emulator, connected device, or supported desktop/browser target.

From the repository root:

```bash
flutter doctor
flutter pub get
flutter analyze
flutter test
flutter run
```

For the standalone Dart examples in Experiment 1, run a specific file with:

```bash
dart run docs/experiments/experiment-1/02-dart-variables.dart
```

## Experiment index

| No. | Experiment title (lab-manual wording) | Code / notes |
| --- | --- | --- |
| 1 | Flutter and Dart setup; write a simple Dart program | [Experiment 1 notes](docs/experiments/experiment-1/01-sdk-setup.md), [Dart examples](docs/experiments/experiment-1/) |
| 2 | Explore various Flutter widgets; combined layouts using Row, Column and Stack | [Widget example](docs/experiments/experiment-2/03-widget-practice.dart), [reusable widgets](lib/widgets/) |
| 3 | Responsive UI and media queries in Flutter; implement media queries and breakpoints | [Responsive dashboard](lib/screens/responsive_dashboard_screen.dart), [MediaQuery example](docs/experiments/experiment-3/03-mediaquery-example.dart), [LayoutBuilder example](docs/experiments/experiment-3/04-layoutbuilder-example.dart) |
| 4 | Navigation in Flutter; implement navigation with named routes | [Route table](lib/navigation/app_routes.dart), [navigation example](docs/experiments/experiment-4/03-navigation-practice.dart) |
| 5 | Stateful and stateless widgets; state management using setState() and Provider | [Experiment 5 documentation](docs/experiments/experiment-5/README.md), [setState example](examples/experiment_5/setstate_main.dart), [Provider example](examples/experiment_5/provider_main.dart) |
| 6 | Custom widgets and styling in Flutter; themes and custom styles | [Experiment 6 documentation](docs/experiments/experiment-6/README.md), [styling example](examples/experiment_6/custom_styling_example.dart) |
| 7 | Design a form with input fields; form validation and error handling | [Experiment 7 documentation](docs/experiments/experiment-7/README.md), [form example](examples/experiment_7/form_validation_example.dart) |
| 8 | Animations in Flutter; animations such as fade and slide | [Experiment 8 documentation](docs/experiments/experiment-8/README.md), [animation example](examples/experiment_8/animations_example.dart) |

## Experiment 1 — Flutter and Dart setup; simple Dart program

### Aim
Install/configure Flutter and Dart and write/run a simple Dart program.

### Explanation
Flutter's SDK provides the Flutter framework and Dart toolchain. The manual begins with downloading/extracting the SDK, setting the system PATH, installing Git, checking the environment, accepting Android SDK licences, and writing a small Dart program. The repository also includes Dart practice files covering variables, control flow, functions, collections, classes, null safety, and asynchronous programming.

### Program/source links
- [SDK setup procedure](docs/experiments/experiment-1/01-sdk-setup.md)
- [Dart variables example](docs/experiments/experiment-1/02-dart-variables.dart)
- [Other Dart exercises](docs/experiments/experiment-1/)

### Expected output
The variable example should print the FitTrack app name, a sample water goal, sample weight, and workout-completion state to the terminal. The exact output depends on the values defined in the file. This README has not independently run the file in this session.

### Output screenshot
**Pending capture:** save the terminal output as `docs/experiments/screenshots/experiment-1-dart-output.png`.

### Result
The experiment introduces the Flutter/Dart toolchain and foundational Dart language features.

## Experiment 2 — Explore various Flutter widgets and combined layouts

### Aim
Explore Flutter widgets and create a layout using `Row`, `Column`, and `Stack`.

### Explanation
Flutter interfaces are built by composing widgets. The lab manual illustrates text, image and container widgets and then combines horizontal, vertical and layered layouts. In FitTrack, reusable widgets compose the dashboard's activity metrics, workout summaries, water progress, and nutrition sections. A profile badge also uses `Stack` to place a status indicator over an avatar.

### Program/source links
- [Layout practice example](docs/experiments/experiment-2/03-widget-practice.dart)
- [Metric card](lib/widgets/metric_card.dart)
- [Stacked profile badge](lib/widgets/stacked_profile_badge.dart)
- [Dashboard screen](lib/screens/dashboard_screen.dart)

### Expected output
A dashboard-style interface with cards and text arranged in rows and columns, with a layered badge where that widget is used. This is the expected UI from the source; a fresh device/emulator run was not performed as part of this documentation review.

### Output screenshot
**Pending capture:** save a running-app screenshot as `docs/experiments/screenshots/experiment-2-widgets-layouts.png`.

### Result
The experiment demonstrates composing Flutter widgets into reusable visual layouts.

## Experiment 3 — Responsive UI and media queries in Flutter

### Aim
Design a responsive UI that adapts to different screen sizes using media queries and layout constraints.

### Explanation
`MediaQuery.sizeOf(context)` reads the current view size, while `LayoutBuilder` responds to the constraints given to a widget. FitTrack's responsive dashboard uses the screen width to switch between narrow stacked content and a wider two-column arrangement. The notes document practical breakpoint bands; these are project choices, not Flutter-mandated values.

### Program/source links
- [Responsive dashboard](lib/screens/responsive_dashboard_screen.dart)
- [Responsive metric grid](lib/widgets/responsive_metric_grid.dart)
- [Adaptive page padding](lib/widgets/adaptive_page_padding.dart)
- [MediaQuery example](docs/experiments/experiment-3/03-mediaquery-example.dart)
- [LayoutBuilder example](docs/experiments/experiment-3/04-layoutbuilder-example.dart)
- [Responsive design notes](docs/experiments/experiment-3/01-responsive-design.md)

### Expected output
The metric and summary regions should reflow based on available width. The manual also describes different UI arrangements for mobile and desktop-sized windows. Capture the app at more than one width to demonstrate the change.

### Output screenshots
**Pending captures:**
- `docs/experiments/screenshots/experiment-3-responsive-mobile.png`
- `docs/experiments/screenshots/experiment-3-responsive-wide.png`

### Result
The experiment demonstrates responsive layout decisions using screen dimensions and parent constraints.

## Experiment 4 — Navigation in Flutter; named routes

### Aim
Set up navigation between different screens using Flutter's Navigator and named routes.

### Explanation
The app's route table is centralized in `AppRoutes`. The dashboard, workouts, workout detail, nutrition, profile, and settings screens are assigned named paths. Flutter's Navigator APIs move between destinations and allow returning to the previous screen. The lab manual's procedure includes a multi-screen navigation example and a named-routes version.

### Program/source links
- [Named route definitions](lib/navigation/app_routes.dart)
- [App route configuration](lib/main.dart)
- [Navigation practice example](docs/experiments/experiment-4/03-navigation-practice.dart)
- [Navigation test source](test/navigation_test.dart)

### Expected output
The app should open on the dashboard. Navigation controls should open relevant FitTrack sections, and a pushed detail screen should allow returning to the previous screen. A repository test exists for the initial dashboard route, but this documentation pass has not run the test suite.

### Output screenshot
**Pending capture:** save a screenshot showing a destination reached through navigation as `docs/experiments/screenshots/experiment-4-navigation.png`. A second screenshot of the destination screen may be added if needed.

### Result
The experiment demonstrates navigation between screens and centralized named-route configuration.

## Experiment 5 — Stateful and stateless widgets; state management using setState() and Provider

### Aim
Understand the difference between stateless and stateful widgets and implement state updates using `setState()` and Provider.

### Explanation
A `StatelessWidget` describes UI that does not own mutable local state. A `StatefulWidget` works with a `State` object and can rebuild after `setState()` changes local state. Provider is a separate state-sharing approach in the lab manual. The current app uses stateless UI components, but its current `pubspec.yaml` does **not** declare the Provider dependency; the Provider example must be added and its dependency resolved before that part can be run.

### Program/source links
- [Experiment 5 notes](docs/experiments/experiment-5/README.md)
- Proposed standalone example: `docs/experiments/experiment-5/state_management_example.dart` (not yet added)
- [Current dependency configuration](pubspec.yaml)

### Expected output
A counter or similar sample UI should update when a user presses an increment button. A Provider-based variation should expose state to a listening widget and rebuild it when the value changes. These are expected behaviors from the experiment brief, not verified outputs.

### Output screenshot
**Pending capture:** `docs/experiments/screenshots/experiment-5-state-management.png`.

### Result
The experiment is intended to compare local widget state with shared application state. **Implementation and Provider dependency are still pending.**

## Experiment 6 — Custom widgets and styling in Flutter; themes and custom styles

### Aim
Create reusable custom widgets and apply themes and custom styles to UI elements.

### Explanation
Custom widgets encapsulate visual elements so they can be reused and maintained. Theme data defines shared colors and text/button styling, while widget-level styles can customize individual elements. FitTrack already defines app-level `ThemeData` and uses reusable cards and other widgets. A standalone manual-aligned sample should demonstrate a custom card and themed button/text styles.

### Program/source links
- [Experiment 6 notes](docs/experiments/experiment-6/README.md)
- [App-wide theme](lib/main.dart)
- [Reusable metric card](lib/widgets/metric_card.dart)
- Proposed standalone example: `docs/experiments/experiment-6/custom_styling_example.dart` (not yet added)

### Expected output
A custom card and button should display the defined color, shape, padding, and text styles; the overall app should follow its theme definitions. These are expected visual characteristics, not a tested screenshot.

### Output screenshot
**Pending capture:** `docs/experiments/screenshots/experiment-6-custom-styling.png`.

### Result
The existing app demonstrates reusable widgets and an app theme; the focused, lab-aligned custom styling example still needs implementation and capture.

## Experiment 7 — Design a form with input fields, validation and error handling

### Aim
Design a form containing input fields and validate user input with appropriate error messages.

### Explanation
The lab manual's example lists Name, Email and Password fields and a submit button. It describes validation feedback for required values, valid email format and a password with a minimum length of six characters. Flutter's `Form`, `GlobalKey<FormState>` and `TextFormField` validators can be used to implement these requirements.

### Program/source links
- [Experiment 7 notes](docs/experiments/experiment-7/README.md)
- Proposed standalone example: `docs/experiments/experiment-7/form_validation_example.dart` (not yet added)

### Expected output
Empty required fields should show required-field errors; invalid email text should show an email validation message; a password shorter than six characters should show a length error. Valid input should reach a submit confirmation. These are expected outcomes from the manual requirements, not tested outputs.

### Output screenshot
**Pending capture:** `docs/experiments/screenshots/experiment-7-form-validation.png`. Capture the actual validation state; a separate valid-submission screenshot may be added.

### Result
The experiment demonstrates collecting input and communicating validation errors. **The example implementation and output captures are pending.**

## Experiment 8 — Animations in Flutter

### Aim
Add animations to UI elements using Flutter's animation features.

### Explanation
The lab manual demonstrates animated size, height, color and opacity changes and separately mentions fade and slide animations. A focused example should use widgets such as `AnimatedContainer` and transition widgets such as `FadeTransition` or `SlideTransition`, without changing the existing FitTrack navigation or dashboard.

### Program/source links
- [Experiment 8 notes](docs/experiments/experiment-8/README.md)
- Proposed standalone example: `docs/experiments/experiment-8/animations_example.dart` (not yet added)

### Expected output
Interacting with a button should trigger an animated container change, fade, slide, or related effect as implemented. This describes expected behavior, not a tested result.

### Output screenshot
**Pending capture:** `docs/experiments/screenshots/experiment-8-animations.png`. A still image captures one visual state; a short screen recording or GIF is better evidence of motion where permitted.

### Result
The experiment will demonstrate animated UI changes and transition effects. **The example implementation and output evidence are pending.**

## Screenshot evidence checklist

Create `docs/experiments/screenshots/` and commit real captures at these paths:

| Experiment | Suggested image |
| --- | --- |
| 1 | `experiment-1-dart-output.png` |
| 2 | `experiment-2-widgets-layouts.png` |
| 3 | `experiment-3-responsive-mobile.png`, `experiment-3-responsive-wide.png` |
| 4 | `experiment-4-navigation.png` |
| 5 | `experiment-5-state-management.png` |
| 6 | `experiment-6-custom-styling.png` |
| 7 | `experiment-7-form-validation.png` |
| 8 | `experiment-8-animations.png` |

Screenshots must be captured from the running Dart program or Flutter app. Do not use mock images as if they were actual output.

## Repository structure

```text
FitTrack-Flutter-Lab/
├── lib/
│   ├── main.dart
│   ├── navigation/
│   ├── screens/
│   └── widgets/
├── docs/
│   ├── PROJECT_STATUS.md
│   └── experiments/
│       ├── experiment-1/
│       ├── experiment-2/
│       ├── experiment-3/
│       ├── experiment-4/
│       ├── experiment-5/
│       ├── experiment-6/
│       ├── experiment-7/
│       ├── experiment-8/
│       └── screenshots/ (to be populated with actual captures)
├── test/
└── pubspec.yaml
```

## Verification status

- The repository tree, README, selected Dart/Flutter files, route configuration, existing tests, and dependency configuration were inspected through GitHub.
- Existing dashboard/navigation source files were not changed as part of this documentation update.
- No local Flutter commands were run in this session, so analyzer/test success is **not claimed**.
- No screenshot files were present under `docs/experiments/screenshots/` at inspection time.
- Experiments 5–8 are documented from the manual, but their separate source examples and real output screenshots are not yet committed.


## Screenshot evidence note

The screenshot evidence bundle contains captures of individual examples run in DartPad, not screenshots of the complete FitTrack repository app. Copy the real image files into `docs/experiments/screenshots/` and update the links to their actual filenames. Experiments 1–8 are represented by the screenshot filenames; Experiment 4 may include home and workout-detail screens, Experiment 7 should show validation errors, and Experiment 8 should include visible and faded states. These screenshots do not prove that `flutter analyze` or `flutter test` passed.
