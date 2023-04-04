import 'package:auto_fx_flutter/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/models.dart';

class AuthRepo {
  late final AuthService _authService;

  AuthRepo() {
    _authService = AuthService();
  }

  Future<void> registerUser(
      String userName, String email, String password) async {
    try {
      // UserCredential userCredential =
      await _authService.registerWithEmailAndPassword(
        userName,
        email,
        password,
      );
      // User user = userCredential.user!;
      // return UserModel(
      //   uId: user.uid,
      //   name: userName,
      //   email: email,
      //   isEmailVerified: user.emailVerified,
      // );
    } catch (exception) {
      rethrow;
    }
  }

  Future<UserModel> loginUser(String email, String password) async {
    try {
      UserCredential userCredential =
          await _authService.loginWithEmailAndPassword(
        email,
        password,
      );
      User user = userCredential.user!;
      return UserModel(
        uId: user.uid,
        name: user.displayName ?? '',
        email: email,
        isEmailVerified: user.emailVerified,
      );
    } catch (exception) {
      rethrow;
    }
  }
}
