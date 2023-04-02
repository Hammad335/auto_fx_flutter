import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/enums/enums.dart';
import '../../../core/repository/auth_repo.dart';

class CredentialsController extends GetxController {
  late final AuthRepo _authRepo;
  late Size size;

  final formKey = GlobalKey<FormState>();
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  Rx<AuthMode> selectedAuthMode = AuthMode.Signin.obs;

  // late AnimationController animationController;

  CredentialsController() {
    _authRepo = AuthRepo();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  init(BuildContext context) {
    size = MediaQuery.of(context).size;
  }

  bool get isSignInMode => selectedAuthMode.value == AuthMode.Signin;

  void authenticate() {
    if (!formKey.currentState!.validate()) return;

    if (selectedAuthMode.value == AuthMode.Signup) {
      _registerNewUser(
        userNameController.text,
        emailController.text,
        passwordController.text,
      );
    } else {
      _loginUser(
        emailController.text,
        passwordController.text,
      );
    }
  }

  void _registerNewUser(String userName, String email, String password) async {}

  void _loginUser(String email, String password) async {}

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
