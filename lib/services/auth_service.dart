import 'package:firebase_auth/firebase_auth.dart';
import 'database_service.dart';

class AuthService {
  late final DatabaseService _databaseService;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthService() {
    _databaseService = DatabaseService();
  }

  Future<void> registerWithEmailAndPassword(
    String userName,
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = userCredential.user!;

      // updating user name
      user.updateDisplayName(userName);

      // store userData to cloud-firestore with uid
      await _databaseService.addToFirestore(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
      // currentUser.value = null;
    } catch (e) {
      rethrow;
    }
  }
}
