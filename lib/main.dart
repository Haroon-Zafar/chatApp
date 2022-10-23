import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Why using Future ? to integrate FireBase
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}
