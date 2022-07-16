import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/tababr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 10),
      ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>
      Tabbarr(),))
    );
  }
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
body: SafeArea(child: Center(
  child: Text("Splashscreen"),
)),
      )
    );
  }
}