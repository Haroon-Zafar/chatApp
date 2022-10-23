import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Why using Future ? to integrate FireBase
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
