import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signInAnonymous() async {
    AuthResult result = await _auth.signInAnonymously();
    FirebaseUser user = result.user;
    return user;
  }

  static Future<void> signOut() async {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get userAuthStream => _auth.onAuthStateChanged;
}
