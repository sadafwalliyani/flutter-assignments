import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practiceoftest/screens/screen1.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
      ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>
      Screen1(),))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 248, 5, 147),
      body:  Center(
        child: Image.asset(
                'assests/Vector.png',
                 ),
      ), 
    
      
      
      );
  }
}