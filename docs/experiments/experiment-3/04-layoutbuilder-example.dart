import 'package:flutter/material.dart';

class ConstraintAwareMessage extends StatelessWidget {
  const ConstraintAwareMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 360) {
          return const Text('Compact layout');
        }
        if (constraints.maxWidth < 700) {
          return const Text('Medium layout');
        }
        return const Text('Wide layout');
      },
    );
  }
}
