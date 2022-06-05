


import 'package:classs5/count.dart';
import 'package:classs5/dashboard.dart';
import 'package:classs5/login.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: Count(),      
    );
  }
}