# Experiment 1.7 — Null safety

Dart distinguishes nullable and non-nullable types.

```dart
String displayName = 'Athlete';
String? optionalNickname;

final String heading = optionalNickname ?? displayName;
```

- Use `String` when a value must exist.
- Use `String?` when `null` is a valid state.
- Prefer `??` to provide a safe fallback.
- Avoid force-unwrapping with `!` unless the value is guaranteed to be non-null.
