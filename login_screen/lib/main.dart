import 'package:flutter/material.dart';
import 'package:login_screen/Pages/Profile.dart';
import 'package:login_screen/login.dart';
import 'package:login_screen/registration.dart';

void main(){
  runApp(loginScreen());

}
class loginScreen extends StatelessWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
     home:registration(),
     );

  }
}