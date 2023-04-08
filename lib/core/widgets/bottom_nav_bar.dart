import 'package:auto_fx_flutter/constants/constants.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../enums/enums.dart';
import '../styles/styles.dart';
import '../theme/colors.dart';
import 'widgets.dart';

class BottomNavBar extends StatelessWidget {
  final NavController controller;

  const BottomNavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      alignment: Alignment.bottomCenter,
      color: backgroundColor,
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPaintDivider(
            size: controller.getSize,
            dividerColor: greenDividerColor,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarIconButton(
                controller: controller,
                imagePath: navBarImages[0],
                navIcon: NavBarIcon.Home,
              ),
              NavBarIconButton(
                controller: controller,
                imagePath: navBarImages[1],
                navIcon: NavBarIcon.Trade,
              ),
              NavBarIconButton(
                controller: controller,
                imagePath: navBarImages[2],
                navIcon: NavBarIcon.Lessons,
              ),
              NavBarIconButton(
                controller: controller,
                imagePath: navBarImages[3],
                navIcon: NavBarIcon.User,
              ),
            ],
          ),
          const SizedBox(height: 15),
          CustomPaintDivider(
            size: controller.getSize,
            dividerColor: blueDividerColor,
          ),
        ],
      ),
    );
  }
}

class NavBarIconButton extends StatelessWidget {
  final NavController controller;
  final String imagePath;
  final NavBarIcon navIcon;

  const NavBarIconButton({
    super.key,
    required this.controller,
    required this.imagePath,
    required this.navIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleSelectedNavIcon(navIcon);
      },
      child: Obx(
        () => Container(
          width: 38,
          height: 38,
          decoration: controller.selectedNavBarIcon.value == navIcon
              ? BoxDecoration(
                  color: navIconBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: ButtonShadow.navIconShadow,
                )
              : null,
          child: Material(
            elevation: 20,
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            child: ImageIcon(
              AssetImage(imagePath),
              size: 25,
              color: controller.selectedNavBarIcon.value == navIcon
                  ? navBarIconColorSelected
                  : navBarIconColorUnSelected,
            ),
          ),
        ),
      ),
    );
  }
}
