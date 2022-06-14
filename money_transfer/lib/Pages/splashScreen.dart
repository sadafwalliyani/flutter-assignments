import 'dart:async';
import 'package:flutter/material.dart';
import 'package:money_transfer/Pages/Open.dart';
import '../Constant/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
Timer(const Duration(seconds:5), () => 
Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Open())));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff3d7fe5),
      //Gradient(colors: LinearGradient([const Color(0xff3d7fe5),const Color(0xff4287f0)])),
      body:  Center(
        child: Image.asset(
                'assests/splashpic.gif',
                 ),
      )
    );
  }
}