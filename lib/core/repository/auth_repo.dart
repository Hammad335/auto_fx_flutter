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
      await _authService.signUpWithEmailAndPassword(
        userName,
        email,
        password,
      );
    } catch (exception) {
      rethrow;
    }
  }

  Future<UserModel> loginUser(String email, String password) async {
    try {
      UserCredential userCredential =
          await _authService.signInWithEmailAndPassword(
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

  Future<UserModel> signInWithGoogle() async {
    try {
      UserCredential userCredential = await _authService.signInWithGoogle();
      User user = userCredential.user!;
      return UserModel(
        uId: user.uid,
        name: user.displayName ?? '',
        email: user.email ?? '',
        isEmailVerified: user.emailVerified,
      );
    } catch (exception) {
      rethrow;
    }
  }
}
