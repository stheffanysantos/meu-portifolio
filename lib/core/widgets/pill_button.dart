import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  const PillButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.background,
    required this.foreground,
    this.hoverBackground,
    this.borderColor,
  });

  final String label;
  final VoidCallback onTap;
  final Color background;
  final Color foreground;
  final Color? hoverBackground;
  final Color? borderColor;

  static const _pillRadius = 28.0;
  static const _pressedRadius = 14.0;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(foreground),
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return hoverBackground ?? background;
          }
          return background;
        }),
        shape: WidgetStateProperty.resolveWith((states) {
          final radius = states.contains(WidgetState.pressed)
              ? _pressedRadius
              : _pillRadius;
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: borderColor == null
                ? BorderSide.none
                : BorderSide(color: borderColor!, width: 2),
          );
        }),
      ),
      child: Text(label),
    );
  }
}
