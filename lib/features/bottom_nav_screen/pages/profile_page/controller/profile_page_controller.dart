import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  late final NavController _navController;

  ProfilePageController() {
    _navController = Get.find<NavController>();
  }

  Size get getSize => _navController.getSize;
}
