import 'package:firebase_auth/firebase_auth.dart';

Future createAccount(String name, String email, String password) async {
  // IT will help us to call FirebaseAuth class's functions.
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    // make user nullable User -> User?
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;

    if (user != null) {
      print("Login Successful");
      return user;
    } else {
      print("Account Creation failed");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future logIn(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    User? user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;

    //   that if user is null it means that login is not failed.
    if (user != null) {
      print("Login Successful");
      return user;
    } else {
      print("Login Failed");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

// creating a logOut() function

Future logOut() async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut();
  } catch (e) {
    print("error");
  }
}
