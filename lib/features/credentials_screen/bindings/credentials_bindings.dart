import 'package:get/get.dart';
import '../controller/credentials_controller.dart';

class CredentialsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CredentialsController());
  }
}
