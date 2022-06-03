import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/HomeScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme:  ThemeData(
          fontFamily: 'OpenSans',
         primaryColor: Color(0xFF075E54), colorScheme: 
         ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF128C7E)),
         //colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF128C7E)),

          ),
          debugShowCheckedModeBanner: false,
              home: Homescreen(),
      
    );
  }
}