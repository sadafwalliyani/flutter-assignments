import 'package:flutter/material.dart';
import 'package:money_transfer/Pages/Home.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'Pages/Open.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily:'RussoOne',
        
      ),
      debugShowCheckedModeBanner: false,
      home: Open(),
    );
  }
}
