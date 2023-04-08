import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:auto_fx_flutter/core/widgets/bottom_nav_bar.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:auto_fx_flutter/features/home_screen/view/home_screen.dart';
import 'package:auto_fx_flutter/features/profile_screen/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavScreen extends StatelessWidget {
  static const String name = '/bottom-nav-screen';
  final _controller = Get.find<NavController>();

  BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller.init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavBar(controller: _controller),
      body: Obx(() {
        // initializing corresponding getxControllers
        _controller.initControllers();

        switch (_controller.selectedNavBarIcon.value) {
          case NavBarIcon.Home:
            {
              return HomeScreen();
            }
          case NavBarIcon.Bot:
            {
              return HomeScreen();
            }
          case NavBarIcon.Trade:
            {
              return HomeScreen();
            }
          case NavBarIcon.User:
            {
              return ProfileScreen();
            }
          default:
            {
              return HomeScreen();
            }
        }
      }),
    );
  }
}
