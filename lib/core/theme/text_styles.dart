import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle errorTextStyle = TextStyle(
    fontSize: 16,
    color: errorColor,
  );
  static const TextStyle hintTextStyle = TextStyle(
    color: secondaryColor,
  );
  static const TextStyle botWidgetTextStyle = TextStyle(
    color: secondaryColor,
  );
  static const TextStyle percentageStyle = TextStyle(
    color: green,
  );

  static const TextStyle lessonCategoryTextStyle = TextStyle(
    color: secondaryColor,
    fontSize: 17,
  );
  static const TextStyle lessonPageHeadingStyle = TextStyle(
    color: secondaryColor,
    fontSize: 19,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  static const TextStyle botScreenHeadingStyle = TextStyle(
    color: primaryColor,
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle botDescStyle = TextStyle(
    color: secondaryColor,
    fontSize: 15,
    height: 1.5,
  );
  static const TextStyle featureKeyStyle = TextStyle(
    color: secondaryColor,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle buttonLabelTextStyle = TextStyle(
    color: secondaryColor,
    fontSize: 18,
    letterSpacing: 1,
    fontWeight: FontWeight.w400,
  );
}
