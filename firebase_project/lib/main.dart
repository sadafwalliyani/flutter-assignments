import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_project/firebase_options.dart';
import 'package:firebase_project/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';




void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
   );
   runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:registeration()
    );
    
  }
}