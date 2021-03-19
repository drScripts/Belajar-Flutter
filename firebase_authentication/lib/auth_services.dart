import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print("error : " + e.toString());

      return null;
    }
  }

  static Future<void> signOutAnonymous() async {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get fireBaseUserStream =>
      _auth.onAuthStateChanged;
}
