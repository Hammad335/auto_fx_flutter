import 'package:flutter/material.dart';
import '../../features/credentials_screen/controller/credentials_controller.dart';
import '../styles/styles.dart';
import '../theme/colors.dart';

class CustomButton extends StatelessWidget {
  final CredentialsController controller;
  final String label;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.controller,
    required this.label,
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
            controller.size.width * 0.75,
            controller.size.height * 0.052,
            5,
          ),
          Material(
            elevation: 15,
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: Container(
              width: controller.size.width * 0.75,
              height: controller.size.height * 0.052,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  color: greyLight,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
