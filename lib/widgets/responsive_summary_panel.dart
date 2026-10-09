import 'package:flutter/material.dart';

class ResponsiveSummaryPanel extends StatelessWidget {
  const ResponsiveSummaryPanel({super.key, required this.left, required this.right});

  final Widget left;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 640) {
          return Column(children: [left, const SizedBox(height: 12), right]);
        }
        return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(child: left),
          const SizedBox(width: 12),
          Expanded(child: right),
        ]);
      },
    );
  }
}
