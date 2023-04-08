import 'package:auto_fx_flutter/features/pages/lessons_page/controller/lessons_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../core/enums/enums.dart';
import '../../pages/home_page/controller/home_controller.dart';
import '../../pages/profile_page/controller/profile_controller.dart';

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
          Get.lazyPut(() => HomeController());
        }
        break;
      case NavBarIcon.Lessons:
        {
          Get.lazyPut(() => LessonsController());
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
