import 'package:auto_fx_flutter/services/auth_service.dart';

class AuthRepo {
  late final AuthService _authService;

  AuthRepo() {
    _authService = AuthService();
  }

  void registerUser(String userName, String email, String password) async {}

  void loginUser(String email, String password) async {}
}
