import 'package:flutter/material.dart';
import 'dart:math';

class FlippingLogo extends StatefulWidget {
  final String imagePath;
  final double height;
  final double width;

  const FlippingLogo({
    super.key,
    required this.imagePath,
    this.height = 100.0,
    this.width = 100.0,
  });

  @override
  _FlippingLogoState createState() => _FlippingLogoState();
}

class _FlippingLogoState extends State<FlippingLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(); // Makes the animation continuous

    // Create a curved animation for more natural flipping motion
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY((_controller.value) * pi * 2),
          child: Image.asset(
            widget.imagePath,
            width: widget.width,
            height: widget.height,
          ),
        );
      },
    );
  }
}
