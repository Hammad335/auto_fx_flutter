import 'package:flutter/material.dart';
import '../styles/styles.dart';
import '../theme/colors.dart';
import '../theme/text_styles.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String label;
  final double elevation;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.label,
    required this.elevation,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ButtonShadow.background(
            // size.width * 0.75,
            // size.height * 0.052,
            width,
            height,
            5,
          ),
          Material(
            elevation: elevation,
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: Container(
              // width: size.width * 0.75,
              // height: size.height * 0.052,
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: buttonFillColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: customButtonBorderColor,
                ),
              ),
              child: Text(
                label,
                style: TextStyles.buttonLabelTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
