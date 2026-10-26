import 'package:flutter/material.dart';

class ResponsiveSplit extends StatelessWidget {
  const ResponsiveSplit({
    super.key,
    required this.first,
    required this.second,
    this.gap = 32,
  });

  final Widget first;
  final Widget second;
  final double gap;

  static const breakpoint = 600.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < breakpoint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              first,
              SizedBox(height: gap),
              second,
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: first),
            SizedBox(width: gap),
            Expanded(child: second),
          ],
        );
      },
    );
  }
}
