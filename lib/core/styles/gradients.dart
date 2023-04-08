import 'package:flutter/material.dart';

class Gradients {
  static BoxDecoration get selectedCategoryBorderGradient {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Colors.green,
          Colors.blue,
        ],
      ),
      borderRadius: BorderRadius.circular(6),
    );
  }
}
