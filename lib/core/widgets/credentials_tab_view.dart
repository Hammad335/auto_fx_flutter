import 'package:auto_fx_flutter/core/button_shadow/button_shadow.dart';
import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/credentials_screen/controller/credentials_controller.dart';
import '../theme/colors.dart';

class CredentialsTabView extends StatelessWidget {
  final CredentialsController controller;

  const CredentialsTabView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getTabView(
          label: 'Sign in',
          credentialTab: AuthMode.Signin,
          controller: controller,
        ),
        _getTabView(
          label: 'Sign up',
          credentialTab: AuthMode.Signup,
          controller: controller,
        ),
      ],
    );
  }

  Widget _getTabView({
    required String label,
    required AuthMode credentialTab,
    required CredentialsController controller,
  }) {
    return GestureDetector(
      onTap: () => controller.toggleTabView(credentialTab),
      child: Obx(
        () => Stack(
          alignment: Alignment.bottomRight,
          children: [
            if (controller.selectedAuthMode.value == credentialTab)
              ButtonShadow.background(
                controller.size.width * 0.33,
                controller.size.height * 0.045,
                10,
              ),
            Container(
              width: controller.size.width * 0.33,
              height: controller.size.height * 0.045,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: controller.selectedAuthMode.value == credentialTab
                    ? primary
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                label,
                style: const TextStyle(color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
