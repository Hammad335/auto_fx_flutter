import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<User> signUpWithEmailAndPassword(
    String userName,
    String email,
    String password,
  );

  Future<UserCredential> signInWithGoogle();

  Future<UserCredential> signInWithEmailAndPassword(
    String email,
    String password,
  );

  bool isLoggedIn();

  Future<void> logout();
}
