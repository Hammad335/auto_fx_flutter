import 'package:auto_fx_flutter/core/repository/auth_repo/auth_repo_impl.dart';
import 'package:get/get.dart';
import '../../../core/repository/auth_repo/auth_repo.dart';

class SplashController extends GetxController {
  late final AuthRepo _authRepo;

  SplashController() {
    _authRepo = Get.find<AuthRepoImpl>();
  }

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 4));
    Get.offAllNamed(_authRepo.getInitialRoute());
  }
}
