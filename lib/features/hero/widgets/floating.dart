import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  const Floating({super.key, required this.child});

  final Widget child;

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2500),
  )..repeat(reverse: true);

  late final _offset = Tween<double>(
    begin: 0,
    end: -10,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _offset,
      child: widget.child,
      builder: (_, child) =>
          Transform.translate(offset: Offset(0, _offset.value), child: child),
    );
  }
}
