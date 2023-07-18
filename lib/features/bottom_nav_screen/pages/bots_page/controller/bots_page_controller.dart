import 'package:auto_fx_flutter/core/enums/enums.dart';
import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/core/repository/bots_repo/bots_repo.dart';
import 'package:auto_fx_flutter/core/repository/bots_repo/bots_repo_impl.dart';
import 'package:auto_fx_flutter/features/bot_details_screen/view/bot_details_screen.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotsPageController extends GetxController {
  late final NavController _navController;
  late final BotsRepo _botsRepo;
  Rx<BotTab> selectedBotTab = BotTab.OfficialBots.obs;
  int tappedBotIndex = 0;

  List<Bot> _officialBots = <Bot>[];
  List<Bot> _customizedBots = <Bot>[];

  BotsPageController() {
    _botsRepo = Get.find<BotsRepoImpl>();
    _navController = Get.find<NavController>();
  }

  List<Bot> get getBots {
    if (getSelectedTab == BotTab.OfficialBots) {
      return [..._officialBots];
    } else {
      return [..._customizedBots];
    }
  }

  Future<List<Bot>?> get() async {
    try {
      if (getSelectedTab == BotTab.OfficialBots) {
        return _officialBots = await _botsRepo.getOfficialBots();
      } else {
        return _customizedBots = await _botsRepo.getCustomizedBots();
      }
    } catch (exception) {
      return null;
    }
  }

  void toggleTabView(BotTab botTab) {
    selectedBotTab.value = botTab;
  }

  void navigateToBotScreen(int botIndex) {
    tappedBotIndex = botIndex;
    Get.toNamed(BotDetailsScreen.name);
  }

  Size get getSize => _navController.getSize;

  BotTab get getSelectedTab => selectedBotTab.value;
}
