import 'package:auto_fx_flutter/core/repository/auth_repo/auth_repo.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/view/bottom_nav_screen.dart';
import 'package:auto_fx_flutter/features/credentials_screen/view/credentials_screen.dart';
import 'package:auto_fx_flutter/services/auth_service/auth_service.dart';
import 'package:auto_fx_flutter/services/auth_service/auth_service_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../services/database_service/database_service_impl.dart';
import '../../models/models.dart';

class AuthRepoImpl implements AuthRepo {
  late final AuthService _authService;
  late final DatabaseService _databaseService;

  AuthRepoImpl() {
    _authService = Get.put(AuthServiceImpl());
    _databaseService = DatabaseService();
  }

  @override
  Future<void> registerUser(
      String userName, String email, String password) async {
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

  @override
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

  @override
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

  _addToFirestore(User user) async =>
      await _databaseService.addToFirestore(user);

  @override
  String getInitialRoute() {
    return _authService.isLoggedIn()
        ? BottomNavScreen.name
        : CredentialsScreen.name;
  }
}
