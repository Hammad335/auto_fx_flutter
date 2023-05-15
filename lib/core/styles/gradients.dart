import 'package:flutter/material.dart';

import '../theme/colors.dart';

class Gradients {
  static BoxDecoration get selectedCategoryBorderGradient {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          dividerColorGreen,
          dividerColorBlue,
        ],
      ),
      borderRadius: BorderRadius.circular(6),
    );
  }

  static BoxDecoration containerBorderGradient(double? borderRadius) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          dividerColorGreen.withOpacity(0.8),
          dividerColorGreen.withOpacity(0.7),
          dividerColorGreen.withOpacity(0.5),
          dividerColorGreen.withOpacity(0.2),
          dividerColorGreen.withOpacity(0.1),
          dividerColorGreen.withOpacity(0),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          dividerColorBlue.withOpacity(0.1),
          dividerColorBlue.withOpacity(0.2),
          dividerColorBlue.withOpacity(0.5),
          dividerColorBlue.withOpacity(0.7),
          dividerColorBlue.withOpacity(0.8),
        ],
      ),
      borderRadius: BorderRadius.circular(borderRadius ?? 12),
    );
  }
}
