import 'package:firebase_auth/firebase_auth.dart';
import 'package:quzz_app/services/Firebase_auth.dart';

class FirebaseAuthRepo {
  final FirebaseAuthNew firebaseAuthNew;
  FirebaseAuthRepo(this.firebaseAuthNew);
  Stream<User?> get userstream => firebaseAuthNew.userstream;
  User? get currentuser => firebaseAuthNew.currentuser;
  Future<User?> regis(String email, String password) =>
      firebaseAuthNew.registerwithemail(email: email, password: password);
  Future<User?> login(String email, String password) =>
      firebaseAuthNew.loginwithemail(email: email, password: password);
  Future<User?> signwithgoogle() => firebaseAuthNew.signwithgoogle();
  Future<void> logoutgoogle() => firebaseAuthNew.logoutgoogle();
  Future<void> logout() => firebaseAuthNew.logout();
}
