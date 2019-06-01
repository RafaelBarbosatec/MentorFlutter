
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Auth{
  Future<FirebaseUser> signInWithGoogle();
  Future<FirebaseUser> getUserSign();
  Future<void> logout();
}

class AuthImpl extends Auth{

  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;

  AuthImpl(this.googleSignIn, this.firebaseAuth);

  @override
  Future<FirebaseUser> getUserSign() {
    return firebaseAuth.currentUser();
  }

  @override
  Future<void> logout() {
    return firebaseAuth.signOut();
  }

  @override
  Future<FirebaseUser> signInWithGoogle() async {
    final GoogleSignInAccount googleAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return firebaseAuth.signInWithCredential(credential);
  }

}