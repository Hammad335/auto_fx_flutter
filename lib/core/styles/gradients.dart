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

  static BoxDecoration get botWidgetBorderGradient {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          secondary.withOpacity(0.8),
          secondary.withOpacity(0.7),
          secondary.withOpacity(0.5),
          secondary.withOpacity(0.2),
          secondary.withOpacity(0.1),
          secondary.withOpacity(0),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          primary.withOpacity(0.1),
          primary.withOpacity(0.2),
          primary.withOpacity(0.5),
          primary.withOpacity(0.7),
          primary.withOpacity(0.8),
        ],
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
