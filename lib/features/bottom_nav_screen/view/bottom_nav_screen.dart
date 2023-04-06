import 'package:auto_fx_flutter/core/button_shadow/button_shadow.dart';
import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatelessWidget {
  static const String name = '/bottom-nav-screen';

  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavBarIconButton(
                iconData: Icons.home,
                navIcon: NavIcon.Home,
              ),
              NavBarIconButton(
                iconData: Icons.perm_data_setting_outlined,
                navIcon: NavIcon.Trade,
              ),
              NavBarIconButton(
                iconData: Icons.hourglass_bottom,
                navIcon: NavIcon.Bot,
              ),
              NavBarIconButton(
                iconData: Icons.person,
                navIcon: NavIcon.User,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarIconButton extends StatelessWidget {
  final IconData iconData;
  final NavIcon navIcon;

  const NavBarIconButton({
    super.key,
    required this.iconData,
    required this.navIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      margin: const EdgeInsets.only(left: 35),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: ButtonShadow.navIconShadow,
      ),
      child: Material(
        elevation: 20,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: Icon(
          iconData,
          size: 25,
          color: navBarIconColorSelected,
        ),
      ),
    );
  }
}
