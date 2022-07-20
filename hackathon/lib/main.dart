

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practiceoftest/Pages/Tabbar.dart';
import 'package:practiceoftest/bottomnavigation/cart.dart';
import 'package:practiceoftest/bottomnavigation/home.dart';

import 'package:practiceoftest/firebase_options.dart';
import 'package:practiceoftest/login.dart';
import 'package:practiceoftest/splashScreen.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
   );
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),

    );
  }
}