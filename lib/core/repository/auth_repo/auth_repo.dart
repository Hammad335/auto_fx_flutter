import '../../models/models.dart';

abstract class AuthRepo {
  Future<void> registerUser(
    String userName,
    String email,
    String password,
  );

  Future<UserModel> loginUser(String email, String password);

  Future<UserModel> signInWithGoogle();

  String getInitialRoute();
}
