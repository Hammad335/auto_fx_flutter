import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle errorTextStyle = TextStyle(
    fontSize: 16,
    color: errorColor,
  );
  static const TextStyle hintTextStyle = TextStyle(
    color: greyLight,
  );

  static const TextStyle lessonCategoryTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
  );
  static const TextStyle lessonPageHeadingStyle = TextStyle(
    color: Colors.white,
    fontSize: 19,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
}
