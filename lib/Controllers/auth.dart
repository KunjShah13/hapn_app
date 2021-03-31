import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_todo/Controllers/db.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User> get user {
    return _auth.authStateChanges();
  }

  // sign in
  Future signIn(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } catch (e) {
      return null;
    }
  }

  // register

  Future register(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      // await Db(uid: userCredential.user.uid).updateDb(["Welcome to Fire todo"]);
      return userCredential;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // signOut

  Future signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
