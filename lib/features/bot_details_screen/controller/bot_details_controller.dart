import 'package:auto_fx_flutter/constants/constants.dart';
import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/home_page/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotDetailsController extends GetxController {
  late Size size;

  late final HomeController _homeController;
  late Bot bot;

  BotDetailsController() {
    _homeController = Get.find<HomeController>();
    _initBot();
  }

  void _initBot() {
    bot = _homeController.getOfficialBots[_homeController.tappedBotIndex];
  }

  initSize(BuildContext context) => size = MediaQuery.of(context).size;

  String getFormattedKey(String key) {
    return featureKeys[key] ?? 'None';
  }

  Size get getSize => size;

  get getCurrentBot => bot;
}
