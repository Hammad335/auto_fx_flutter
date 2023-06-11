import 'package:flutter/material.dart';
import '../styles/gradients.dart';

class BorderGradientContainer extends StatelessWidget {
  final Widget child;
  final double? borderRadius;

  const BorderGradientContainer(
      {super.key, required this.child, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Gradients.containerBorderGradient(borderRadius),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: child,
      ),
    );
  }
}
