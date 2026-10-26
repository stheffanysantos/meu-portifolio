import 'package:flutter/material.dart';

class Reveal extends StatefulWidget {
  const Reveal({super.key, required this.child, this.index = 0});

  final Widget child;
  final int index;

  @override
  State<Reveal> createState() => _RevealState();
}

class _RevealState extends State<Reveal> with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  );

  late final _curve = CurvedAnimation(
    parent: _controller,
    curve: const Cubic(.2, .8, .2, 1),
  );

  ScrollPosition? _position;
  bool _triggered = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _position?.removeListener(_check);
    _position = Scrollable.maybeOf(context)?.position;
    _position?.addListener(_check);
    WidgetsBinding.instance.addPostFrameCallback((_) => _check());
  }

  @override
  void dispose() {
    _position?.removeListener(_check);
    _controller.dispose();
    super.dispose();
  }

  void _check() {
    if (_triggered || !mounted) return;
    final box = context.findRenderObject();
    if (box is! RenderBox || !box.attached || !box.hasSize) return;

    final top = box.localToGlobal(Offset.zero).dy;
    final limit = MediaQuery.sizeOf(context).height * .92;
    if (top + box.size.height * .15 > limit) return;

    _triggered = true;
    _position?.removeListener(_check);
    final delay = Duration(milliseconds: widget.index.clamp(0, 6) * 80);
    Future.delayed(delay, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.disableAnimationsOf(context)) return widget.child;

    return AnimatedBuilder(
      animation: _curve,
      child: widget.child,
      builder: (_, child) => Opacity(
        opacity: _curve.value,
        child: Transform.translate(
          offset: Offset(0, 36 * (1 - _curve.value)),
          child: child,
        ),
      ),
    );
  }
}
