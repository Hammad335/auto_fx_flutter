import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/enums/enums.dart';

class CredentialsController extends GetxController {
  // late BuildContext _context;
  late Size size;

  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  Rx<AuthMode> selectedAuthMode = AuthMode.Signin.obs;

  // late AnimationController animationController;

  CredentialsController() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  init(BuildContext context) {
    // _context = context;
    size = MediaQuery.of(context).size;
  }

  initAnimationController(AnimationController animController) {
    // animationController = animController;
  }

  void toggleTabView(AuthMode credentialTab) {
    selectedAuthMode.value =
        credentialTab == AuthMode.Signin ? AuthMode.Signin : AuthMode.Signup;

    if (credentialTab == AuthMode.Signup) {
      selectedAuthMode.value = AuthMode.Signup;
      // animationController.forward();
    } else {
      selectedAuthMode.value = AuthMode.Signin;
      // animationController.reverse();
    }
  }

  @override
  void dispose() {
    // animationController.dispose();
    super.dispose();
  }
}
