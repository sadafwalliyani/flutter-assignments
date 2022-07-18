import 'package:flutter/material.dart';
import 'package:practiceoftest/ToDoApp.dart';
import 'package:practiceoftest/splashscreen.dart';
import 'package:practiceoftest/src/animated_bottom_bar.dart';
import 'package:practiceoftest/tababr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 home:Tabbarr(),
    );
  }
}
