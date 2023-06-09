import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/repository/bots_repo/bots_repo.dart';

class HomeController extends GetxController {
  late final NavController _navController;
  late final BotsRepo _botsRepo;
  Rx<BotTab> selectedBotTab = BotTab.OfficialBots.obs;

  List<Bot> _officialBots = <Bot>[];

  HomeController() {
    _botsRepo = BotsRepo();
    _navController = Get.find<NavController>();
  }

  List<Bot> get getOfficialBots => [..._officialBots];

  Future<List<Bot>?> get() async {
    try {
      _officialBots = await _botsRepo.getOfficialBots();
      return getOfficialBots;
    } catch (exception) {
      return null;
    }
  }

  void toggleTabView(BotTab botTab) {
    selectedBotTab.value = botTab;
  }

  Size get getSize => _navController.getSize;

  BotTab get getSelectedTab => selectedBotTab.value;
}
