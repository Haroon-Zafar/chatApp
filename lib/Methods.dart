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
