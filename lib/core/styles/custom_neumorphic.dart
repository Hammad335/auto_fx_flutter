import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomNeumorphic {
  static NeumorphicStyle style({
    required Color fillColor,
    required double intensity,
    required double depth,
    required double borderRadius,
    bool addBorder = false,
  }) {
    return NeumorphicStyle(
      color: fillColor,
      depth: depth,
      intensity: intensity,
      lightSource: LightSource.bottomRight,
      shadowLightColorEmboss: Colors.black,
      shadowLightColor: Colors.black,
      shadowDarkColor: Colors.transparent,
      border: addBorder
          ? NeumorphicBorder(color: botCheckBoxBorderColor, width: 0.5)
          : const NeumorphicBorder.none(),
      boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(borderRadius)),
      // oppositeShadowLightSource: true,
    );
  }
}
