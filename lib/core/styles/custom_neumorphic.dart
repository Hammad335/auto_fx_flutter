import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomNeumorphic {
  static NeumorphicStyle style({
    required Color fillColor,
    required double intensity,
    required double borderRadius,
  }) {
    return NeumorphicStyle(
      color: fillColor,
      depth: -3,
      intensity: intensity,
      lightSource: LightSource.bottomRight,
      shadowLightColorEmboss: Colors.black,
      border: const NeumorphicBorder.none(),
      boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(borderRadius)),
      // oppositeShadowLightSource: true,
    );
  }
}
