import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         fontFamily: 'ComicNeue',
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(98, 14, 65, 51),
            secondary: Color(0xFF128C7E)),
      ),
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
