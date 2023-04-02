import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ButtonShadow {
  static Widget background(double width, double height, double borderRadius) {
    return Container(
      width: width + 0.5,
      height: height + 1.5,
      // margin: const EdgeInsets.only(top: 2.5, left: 0.1),
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
}
