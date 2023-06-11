import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/home_page/controller/home_page_controller.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/lessons_page/controller/lessons_page_controller.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/profile_page/controller/profile_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../core/enums/enums.dart';
import '../pages/bots_page/controller/bots_page_controller.dart';

class NavController extends GetxController {
  late Size size;
  Rx<NavBarIcon> selectedNavBarIcon = NavBarIcon.Home.obs;

  init(BuildContext context) {
    // if (null != size) {
    size = MediaQuery.of(context).size;
    // }
  }

  Size get getSize => size;

  void toggleSelectedNavIcon(NavBarIcon navIcon) {
    selectedNavBarIcon.value = navIcon;
  }

  void initControllers() {
    switch (selectedNavBarIcon.value) {
      case NavBarIcon.Home:
        {
          Get.lazyPut(() => HomePageController());
        }
        break;
      case NavBarIcon.Bots:
        {
          Get.lazyPut(() => BotsPageController());
        }
        break;
      case NavBarIcon.Lessons:
        {
          Get.lazyPut(() => LessonsPageController());
        }
        break;
      case NavBarIcon.User:
        {
          Get.lazyPut(() => ProfilePageController());
        }
        break;
      default:
        {
          Get.lazyPut(() => HomePageController());
        }
    }
  }
}
