import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static Stream<User?> get userAuthStateChanges =>
      FirebaseAuth.instance.authStateChanges();

  static String getCurrentUserUid() => FirebaseAuth.instance.currentUser!.uid;

  static Future<String?> createUserWithEmailAndPassword(
      {required String email, required String password}) {
    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((userCredential) => userCredential.user?.uid)
        .onError((FirebaseAuthException error, stackTrace) =>
            Future.error(error.code));
  }
}
