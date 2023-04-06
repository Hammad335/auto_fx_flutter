import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:get/get.dart';

class NavBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavController());
  }
}
