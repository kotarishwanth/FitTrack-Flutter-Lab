import 'package:flutter/material.dart';

class AdaptivePagePadding extends StatelessWidget {
  const AdaptivePagePadding({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final horizontal = width >= 1000 ? 40.0 : width >= 600 ? 24.0 : 16.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: child,
        ),
      ),
    );
  }
}
