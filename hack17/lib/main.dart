import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/Pages/Profile.dart';
import 'package:login_screen/Pages/Tabbar.dart';
import 'package:login_screen/firebase_options.dart';
import 'package:login_screen/login.dart';
import 'package:login_screen/registration.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
   );
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