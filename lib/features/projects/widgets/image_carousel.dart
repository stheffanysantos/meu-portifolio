import 'dart:async';

import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    super.key,
    required this.images,
    this.interval = const Duration(seconds: 3),
    this.showDots = true,
  });

  final List<String> images;
  final Duration interval;
  final bool showDots;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  Timer? _timer;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    if (widget.images.length > 1) {
      _timer = Timer.periodic(widget.interval, (_) {
        setState(() => _index = (_index + 1) % widget.images.length);
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          child: Image.asset(
            widget.images[_index],
            key: ValueKey(_index),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        if (widget.showDots && widget.images.length > 1)
          Positioned(
            bottom: 14,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < widget.images.length; i++)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: i == _index ? 18 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(
                        alpha: i == _index ? 1 : .6,
                      ),
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
