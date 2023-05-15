import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/home_page/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/credentials_screen/controller/credentials_controller.dart';
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
          alignment: Alignment.topLeft,
          children: [
            if (null != credentialsController)
              if (credentialsController.getSelectedTab == authMode!)
                ButtonShadow.background(
                  width - 3,
                  height - 2,
                  5,
                ),
            if (null != homeController)
              if (homeController.getSelectedTab == botTab!)
                ButtonShadow.background(
                  width - 3,
                  height - 2,
                  5,
                ),
            Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                color: credentialsController != null
                    ? credentialsController.getSelectedTab == authMode
                        ? buttonFillColor
                        : Colors.transparent
                    : homeController!.getSelectedTab == botTab
                        ? buttonFillColor
                        : Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: credentialsController != null
                      ? credentialsController.getSelectedTab == authMode
                          ? customButtonBorderColor
                          : Colors.transparent
                      : homeController!.getSelectedTab == botTab
                          ? customButtonBorderColor
                          : Colors.transparent,
                ),
              ),
              child: Text(
                label,
                style: const TextStyle(color: secondaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
