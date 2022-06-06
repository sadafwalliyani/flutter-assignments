import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/CustomCard.dart';
import 'package:whatsapp_clone/Widgets/contactWidget.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Contact",
      style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,) ,),),
      body: ListView(children: [
        contactWidget("Samra", "Available"),
        contactWidget("Madiha", "Available"),
        contactWidget("Bilal", "Available"),
        contactWidget("Sadaf", "Hey there! I am using whatsapp"),
        contactWidget("Sameen", "Available"),
      ]),
      //  floatingActionButton: FloatingActionButton(onPressed:(){},
    );
  }
}
