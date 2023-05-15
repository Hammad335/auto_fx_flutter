import 'package:flutter/material.dart';
import '../styles/gradients.dart';

class ScreenBackgroundContainer extends StatelessWidget {
  final Widget child;

  const ScreenBackgroundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: Gradients.screenBackgroundGradient,
      child: child,
    );
  }
}
