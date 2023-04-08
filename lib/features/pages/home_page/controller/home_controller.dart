import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late final NavController _navController;
  Rx<BotTab> selectedBotTab = BotTab.OfficialBots.obs;

  HomeController() {
    _navController = Get.find<NavController>();
  }

  Size get getSize => _navController.getSize;

  void toggleTabView(BotTab botTab) {
    selectedBotTab.value = botTab;
  }

  BotTab get getSelectedTab => selectedBotTab.value;
}
