import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomNeumorphic {
  static NeumorphicStyle style({
    required Color fillColor,
    required double intensity,
    required double depth,
    required double borderRadius,
  }) {
    return NeumorphicStyle(
      color: fillColor,
      depth: depth,
      intensity: intensity,
      lightSource: LightSource.bottomRight,
      shadowLightColorEmboss: Colors.black,
      shadowLightColor: Colors.black,
      shadowDarkColor: Colors.transparent,
      border: const NeumorphicBorder.none(),
      boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(borderRadius)),
      // oppositeShadowLightSource: true,
    );
  }
}
