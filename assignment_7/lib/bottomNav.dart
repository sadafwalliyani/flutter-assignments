import 'package:assignment_7/Screent1.dart';
import 'package:assignment_7/drawer.dart';
import 'package:assignment_7/tabbar.dart';
import 'package:flutter/material.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({ Key? key }) : super(key: key);

  @override
  State<bottomNav> createState() => _bottomNavState();
}
Widget currentscreen= const Screen1();
class _bottomNavState extends State<bottomNav> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: currentscreen,
bottomNavigationBar: BottomAppBar(
  color: Colors.pink,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    IconButton(onPressed: (){
      setState(() {
        currentscreen= const Screen1();
      int  currentTab=0;
      });
    }, icon: Icon(Icons.home)),
    IconButton(onPressed: (){
      
        currentscreen= const Screen1();
        currentTab:1;
    }, icon: Icon(Icons.home)),
    IconButton(onPressed: (){
      
        currentscreen= const Screen1();
        currentTab:2;
    }, icon: Icon(Icons.home)),
    IconButton(onPressed: (){
      
        currentscreen= const Screen1();
        currentTab:3;
    }, icon: Icon(Icons.home)),

  ],),
),      
    );
  }
}