# Experiment 7 — Forms with Input Fields, Validation and Error Handling

## Aim
Design a form with input fields and perform validation and error handling.

## Explanation
The lab manual specifies Name, Email and Password fields with a submit button. Validation checks required values, email format and a password of at least six characters. Flutter's `Form`, `GlobalKey<FormState>` and `TextFormField` validators implement these requirements.

## Source file
- [Form validation example](../../../examples/experiment_7/form_validation_example.dart)

## Run
From the repository root, run `flutter run -t examples/experiment_7/form_validation_example.dart`.

## Test cases
1. Submit an empty form: required-field errors should appear.
2. Enter an invalid email and a password shorter than six characters: corresponding validation messages should appear.
3. Enter a name, a valid email (for example, `student@example.com`) and a password of at least six characters: a success SnackBar should appear.

## Verification status
The form was demonstrated in DartPad during the walkthrough, including an invalid email validation message. The standalone repository source has been added but has not been run or analyzed here. No screenshot is claimed as committed evidence.

## Result
The example implements required-field, email-format and minimum-password-length validation.
