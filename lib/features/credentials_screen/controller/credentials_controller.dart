import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/enums/enums.dart';
import '../../../core/models/models.dart';
import '../../../core/repository/auth_repo.dart';

class CredentialsController extends GetxController {
  late final AuthRepo _authRepo;
  late Size size;

  late UserModel currentUser;
  RxBool isLoading = false.obs;

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

  void authenticate() async {
    if (!formKey.currentState!.validate()) return;

    _showLoading();
    if (selectedAuthMode.value == AuthMode.Signup) {
      await _registerNewUser(
        userNameController.text,
        emailController.text,
        passwordController.text,
      );
    } else {
      await _loginUser(
        emailController.text,
        passwordController.text,
      );
    }
    _hideLoading();
  }

  Future<void> _registerNewUser(
      String userName, String email, String password) async {
    try {
      await _authRepo.registerUser(
        userName,
        email,
        password,
      );
    } catch (exception) {
      Get.snackbar('Error', exception.toString());
    }
  }

  Future<void> _loginUser(String email, String password) async {
    try {
      currentUser = await _authRepo.loginUser(
        email,
        password,
      );
      print(currentUser.toJson());
    } catch (exception) {
      Get.snackbar('Error', exception.toString());
    }
  }

  Future<void> signInWithSocialAccount(SocialAccount socialAccount) async {
    if (socialAccount == SocialAccount.Google) {
      try {
        currentUser = await _authRepo.signInWithGoogle();
        print(currentUser.toJson());
      } catch (exception) {
        Get.snackbar('Error', exception.toString());
      }
    }
  }

  initAnimationController(AnimationController animController) {
    // animationController = animController;
  }

  void toggleTabView(AuthMode credentialTab) {
    selectedAuthMode.value =
        credentialTab == AuthMode.Signin ? AuthMode.Signin : AuthMode.Signup;

    if (credentialTab == AuthMode.Signup) {
    } else {
      selectedAuthMode.value = AuthMode.Signin;
      // animationController.reverse();
      selectedAuthMode.value = AuthMode.Signup;
      // animationController.forward();
    }
  }

  bool get isSignInMode => selectedAuthMode.value == AuthMode.Signin;

  void _showLoading() => isLoading.value = true;

  void _hideLoading() => isLoading.value = false;

  @override
  void dispose() {
    // animationController.dispose();
    super.dispose();
  }
}
