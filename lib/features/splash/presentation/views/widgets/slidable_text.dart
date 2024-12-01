import 'package:flutter/material.dart';

class SlidableText extends StatelessWidget {
  const SlidableText({super.key, required this.slideableAnimation});
  final Animation<Offset> slideableAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideableAnimation,
        builder: (context, widget) {
          return SlideTransition(
            position: slideableAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
