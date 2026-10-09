import 'package:flutter/material.dart';

class ScreenSizeLabel extends StatelessWidget {
  const ScreenSizeLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Text('Viewport: ${size.width.round()} × ${size.height.round()}');
  }
}
