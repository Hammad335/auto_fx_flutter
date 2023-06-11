import 'package:auto_fx_flutter/features/bottom_nav_screen/view/bottom_nav_screen.dart';
import 'package:auto_fx_flutter/features/credentials_screen/view/credentials_screen.dart';
import 'package:auto_fx_flutter/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../services/database_service.dart';
import '../models/models.dart';

class AuthRepo {
  late final AuthService _authService;
  late final DatabaseService _databaseService;

  AuthRepo() {
    _authService = AuthService();
    _databaseService = DatabaseService();
  }

  _addToFirestore(User user) async =>
      await _databaseService.addToFirestore(user);

  Future<void> registerUser(String userName, String email,
      String password) async {
    try {
      User user = await _authService.signUpWithEmailAndPassword(
        userName,
        email,
        password,
      );

      // store user data to firestore
      await _addToFirestore(user);
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

  String getInitialRoute() {
    return _authService.isLoggedIn()
        ? BottomNavScreen.name
        : CredentialsScreen.name;
  }
}
