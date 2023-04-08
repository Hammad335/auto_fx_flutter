import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  late final NavController _navController;

  ProfileController() {
    _navController = Get.find<NavController>();
  }

  Size get getSize => _navController.getSize;
}
