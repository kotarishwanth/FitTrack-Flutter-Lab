import 'package:flutter/material.dart';

class OrientationHint extends StatelessWidget {
  const OrientationHint({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.orientationOf(context) == Orientation.landscape;
    return Text(isLandscape ? 'Landscape view' : 'Portrait view',
        style: Theme.of(context).textTheme.labelMedium);
  }
}
