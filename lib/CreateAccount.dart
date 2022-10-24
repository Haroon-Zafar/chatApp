import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: size.width / 1.2,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              width: size.width / 1.5,
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: size.width / 1.3,
              child: Text(
                "Sign In to Continue",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: size.height / 10,
            ),
            Container(
              width: size.width,
              alignment: Alignment.center,
              child: field(
                size,
                "email",
                Icons.account_box,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                  size,
                  "Password",
                  Icons.lock,
                ),
              ),
            ),
            customButton(size),
            // SizedBox(
            //   height: size.height / 10,
            // ),
            // customButton(size),
            // SizedBox(
            //   height: size.height / 40,
            // ),
            // Text(
            //   "Create Account",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 16,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

// Making a Custom Button
Widget customButton(Size size) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.blue,
    ),
    height: size.height / 14,
    width: size.width / 1.2,
    child: Text(
      "Login",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget field(Size size, String hintText, IconData icon) {
  return Container(
    height: size.height / 15,
    width: size.width / 1.1,
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
