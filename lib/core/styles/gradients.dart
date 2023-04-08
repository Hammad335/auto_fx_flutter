import 'package:flutter/material.dart';

import '../theme/colors.dart';

class Gradients {
  static BoxDecoration get selectedCategoryBorderGradient {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          secondary,
          primary,
        ],
      ),
      borderRadius: BorderRadius.circular(6),
    );
  }
}
