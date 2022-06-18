
import 'package:flutter/material.dart';
import 'package:money_transfer/Pages/Recieve.dart';
import 'package:money_transfer/Pages/splashScreen.dart';
import 'package:money_transfer/Pages/Tabbar.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
home:SplashScreen(),      
    );
  }
}