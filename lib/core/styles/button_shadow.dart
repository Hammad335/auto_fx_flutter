import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ButtonShadow {
  static Widget background(double width, double height, double borderRadius) {
    return Container(
      width: width + 0.5,
      height: height + 1.5,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            color: buttonShadowColor,
            blurRadius: 2,
            spreadRadius: 0.5,
            offset: Offset(-1, 0),
          ),
        ],
      ),
    );
  }

  static List<BoxShadow> get navIconShadow {
    return const [
      BoxShadow(
        color: Colors.black54,
        blurRadius: 1,
        spreadRadius: 1,
        offset: Offset(0, 3),
      ),
    ];
  }
}
