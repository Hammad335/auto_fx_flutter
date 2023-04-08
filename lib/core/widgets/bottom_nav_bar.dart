import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../button_shadow/button_shadow.dart';
import '../enums/enums.dart';
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
                iconData: Icons.home,
                navIcon: NavBarIcon.Home,
              ),
              NavBarIconButton(
                controller: controller,
                iconData: Icons.perm_data_setting_outlined,
                navIcon: NavBarIcon.Trade,
              ),
              NavBarIconButton(
                controller: controller,
                iconData: Icons.hourglass_bottom,
                navIcon: NavBarIcon.Bot,
              ),
              NavBarIconButton(
                controller: controller,
                iconData: Icons.person,
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
  final IconData iconData;
  final NavBarIcon navIcon;

  const NavBarIconButton({
    super.key,
    required this.controller,
    required this.iconData,
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
          width: 35,
          height: 35,
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
            child: Icon(
              iconData,
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
