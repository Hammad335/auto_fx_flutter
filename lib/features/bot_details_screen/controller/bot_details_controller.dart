import 'package:auto_fx_flutter/constants/constants.dart';
import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bottom_nav_screen/pages/bots_page/controller/bots_page_controller.dart';

class BotDetailsController extends GetxController {
  late Size _size;

  late final BotsPageController _botsPageController;
  late Bot _bot;

  BotDetailsController() {
    _botsPageController = Get.find<BotsPageController>();
    _initBot();
  }

  void _initBot() {
    _bot = _botsPageController.getBots[_botsPageController.tappedBotIndex];
  }

  get getCurrentBot => _bot;

  initSize(BuildContext context) => _size = MediaQuery.of(context).size;

  Size get getSize => _size;

  List<MapEntry<String, dynamic>> get getBotFeaturesList => _bot.features
      .toJson()
      .entries
      .map((e) => MapEntry(e.key, e.value))
      .toList();

  String getFormattedKey(String key) {
    return featureKeys[key] ?? 'None';
  }
}
