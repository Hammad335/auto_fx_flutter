import 'package:auto_fx_flutter/features/bot_details_screen/controller/bot_details_controller.dart';
import 'package:get/get.dart';

class BotDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BotDetailsController());
  }

}