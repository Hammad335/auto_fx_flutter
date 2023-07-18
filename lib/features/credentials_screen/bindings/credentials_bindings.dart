import 'package:get/get.dart';
import '../controller/credentials_controller.dart';

class CredentialsBindings extends Bindings {
  @override
  void dependencies() {
    // auth-repo-impl is injected in splash screen's bindings
    // Get.put(AuthRepoImpl());

    Get.put(CredentialsController());
  }
}
