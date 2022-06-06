import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/ContactScreen.dart';
import 'package:whatsapp_clone/Screens/Homescreen.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({ Key? key }) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ContactScreen()),);
      },
      child:Icon(Icons.call
      ))
    );
  }
}