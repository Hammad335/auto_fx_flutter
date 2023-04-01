import 'package:auto_fx_flutter/features/controller/credentials_controller.dart';
import 'package:get/get.dart';

class CredentialsBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(CredentialsController());
  }

}