import 'package:auto_fx_flutter/features/home_screen/controller/home_controller.dart';
import 'package:auto_fx_flutter/features/profile_screen/controller/profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../core/enums/enums.dart';

class NavController extends GetxController {
  late Size size;
  Rx<NavBarIcon> selectedNavBarIcon = NavBarIcon.Home.obs;

  init(BuildContext context) {
    size = MediaQuery.of(context).size;
  }

  Size get getSize => size;

  void toggleSelectedNavIcon(NavBarIcon navIcon) {
    selectedNavBarIcon.value = navIcon;
  }

  void initControllers() {
    switch (selectedNavBarIcon.value) {
      case NavBarIcon.Home:
        {
          Get.lazyPut(() => HomeController());
        }
        break;
      case NavBarIcon.User:
        {
          Get.lazyPut(() => ProfileController());
        }
        break;
      default:
        {
          Get.lazyPut(() => HomeController());
        }
    }
  }
}
