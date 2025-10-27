// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthNew {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn.instance;
  bool init = false;
  Future<User?> registerwithemail({
    required String email,
    required String password,
  }) async {
    try {
      final crendetial = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await crendetial.user?.sendEmailVerification();
      return crendetial.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  Future<User?> loginwithemail({
    required String email,
    required String password,
  }) async {
    try {
      final crendetial = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return crendetial.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  Future<void> initsign() async {
    if (!init) {
      await googleSignIn.initialize(
        serverClientId:
            '324509887443-kafp7r4afibc6llh3iteg3or0gge3oba.apps.googleusercontent.com',
      );
    }
    init = true;
  }

  Future<User?> signwithgoogle() async {
    try {
      initsign();
      final GoogleSignInAccount googleSignInAccount = await googleSignIn
          .authenticate();
      final idtoken = googleSignInAccount.authentication.idToken;
      final authclient = googleSignInAccount.authorizationClient;
      GoogleSignInClientAuthorization? googleSignInClientAuthorization =
          await authclient.authorizationForScopes(['email', 'profile']);
      final accestoken = googleSignInClientAuthorization?.accessToken;
      if (accestoken == null) {
        final auth2 = await authclient.authorizationForScopes([
          'email',
          'profile',
        ]);
        if (auth2?.accessToken == null) {
          throw FirebaseAuthException(code: 'error', message: 'error');
        }
        googleSignInClientAuthorization = auth2;
      }
      final credential = GoogleAuthProvider.credential(
        accessToken: accestoken,
        idToken: idtoken,
      );
      final UserCredential userCredential = await firebaseAuth
          .signInWithCredential(credential);
      return userCredential.user;
    } catch (e) {
      print('Google sign-in error: $e');
      rethrow;
    }
  }

  // Future<User?> sendemailconfirm() async {
  //   try {
  //     final confirm = firebaseAuth.currentUser;
  //     await confirm?.sendEmailVerification();
  //   } catch (e) {}
  // }

  Future<void> logoutgoogle() async {
    await googleSignIn.signOut();
  }

  Future<void> logout() async {
    await firebaseAuth.signOut();
  }

  Stream<User?> get userstream => firebaseAuth.authStateChanges();
  User? get currentuser => firebaseAuth.currentUser;
}
