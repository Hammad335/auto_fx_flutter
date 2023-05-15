import 'package:auto_fx_flutter/constants/constants.dart';
import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/home_page/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotDetailsController extends GetxController {
  late Size _size;

  late final HomeController _homeController;
  late Bot _bot;

  BotDetailsController() {
    _homeController = Get.find<HomeController>();
    _initBot();
  }

  void _initBot() {
    _bot = _homeController.getOfficialBots[_homeController.tappedBotIndex];
  }

  get getCurrentBot => _bot;

  initSize(BuildContext context) =>
      _size = MediaQuery
          .of(context)
          .size;

  Size get getSize => _size;

  List<MapEntry<String, dynamic>> get getBotFeaturesList =>
      _bot.features
          .toJson()
          .entries
          .map((e) => MapEntry(e.key, e.value))
          .toList();

  String getFormattedKey(String key) {
    return featureKeys[key] ?? 'None';
  }


}
