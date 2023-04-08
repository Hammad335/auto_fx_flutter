import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final Size size;

  const PageHeader({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logos/logo.png',
      width: size.width * 0.60,
      height: size.width * 0.18,
    );
  }
}
