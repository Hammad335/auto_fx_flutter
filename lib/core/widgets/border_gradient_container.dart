import 'package:flutter/material.dart';
import '../styles/gradients.dart';

class BorderGradientContainer extends StatelessWidget {
  final Widget child;
  final double? borderRadius;
  final double padding;

  const BorderGradientContainer({
    super.key,
    required this.child,
    this.borderRadius,
    this.padding = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Gradients.containerBorderGradient(borderRadius),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}
