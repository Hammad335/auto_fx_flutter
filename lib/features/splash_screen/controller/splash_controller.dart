import 'package:get/get.dart';

import '../../../core/repository/auth_repo.dart';

class SplashController extends GetxController {
  late final AuthRepo _authRepo;

  SplashController() {
    _authRepo = AuthRepo();
  }

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(_authRepo.getInitialRoute());
  }
}
