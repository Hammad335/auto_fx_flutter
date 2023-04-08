import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/credentials_screen/controller/credentials_controller.dart';
import '../../features/pages/home_page/controller/home_controller.dart';
import '../styles/styles.dart';
import '../theme/colors.dart';

class CustomTabView extends StatelessWidget {
  final CredentialsController? credentialsController;
  final HomeController? homeController;
  final String firstLabel;
  final String secondLabel;
  final double width;
  final double height;

  const CustomTabView({
    super.key,
    this.credentialsController,
    this.homeController,
    required this.firstLabel,
    required this.secondLabel,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getTabView(
          label: firstLabel,
          width: width,
          height: height,
          authMode: AuthMode.Signin,
          botTab: BotTab.OfficialBots,
          credentialsController: credentialsController,
          homeController: homeController,
        ),
        _getTabView(
          label: secondLabel,
          width: width,
          height: height,
          authMode: AuthMode.Signup,
          botTab: BotTab.YourBots,
          credentialsController: credentialsController,
          homeController: homeController,
        ),
      ],
    );
  }

  Widget _getTabView({
    required String label,
    required double width,
    required double height,
    AuthMode? authMode,
    BotTab? botTab,
    CredentialsController? credentialsController,
    HomeController? homeController,
  }) {
    return GestureDetector(
      onTap: () {
        if (null != credentialsController) {
          credentialsController.toggleTabView(authMode!);
        } else if (null != homeController) {
          homeController.toggleTabView(botTab!);
        }
      },
      child: Obx(
        () => Stack(
          alignment: Alignment.bottomRight,
          children: [
            if (null != credentialsController)
              if (credentialsController.getSelectedTab == authMode!)
                ButtonShadow.background(
                  width,
                  height,
                  10,
                ),
            if (null != homeController)
              if (homeController.getSelectedTab == botTab!)
                ButtonShadow.background(
                  width,
                  height,
                  10,
                ),
            Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: credentialsController != null
                    ? credentialsController.getSelectedTab == authMode
                        ? primary
                        : Colors.transparent
                    : homeController!.getSelectedTab == botTab
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
