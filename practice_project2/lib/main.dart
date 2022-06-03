import 'package:flutter/material.dart';
import 'package:practice_project2/HomeScreen.dart';


void main(){
  runApp(MyApp2());

}
class MyApp2 extends StatelessWidget {
  const MyApp2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
      
      
    );
  }
}