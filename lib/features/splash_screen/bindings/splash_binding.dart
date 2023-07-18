import 'package:auto_fx_flutter/core/repository/auth_repo/auth_repo_impl.dart';
import 'package:auto_fx_flutter/features/splash_screen/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRepoImpl());
    Get.put(SplashController());
  }
}
