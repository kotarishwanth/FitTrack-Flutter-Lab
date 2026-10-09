# Experiment 3.1 — Responsive UI

## Aim
Make FitTrack adapt to phones, tablets, and wider windows.

- Use `MediaQuery.sizeOf(context)` when a decision depends on the current screen size.
- Use `LayoutBuilder` when a widget must respond to the constraints offered by its parent.
- Prefer flexible widgets and wrapping layouts over hard-coded widths.
- Check portrait and landscape orientations.

FitTrack uses a one-column metric layout on narrow screens and a two-column layout when enough width is available.
