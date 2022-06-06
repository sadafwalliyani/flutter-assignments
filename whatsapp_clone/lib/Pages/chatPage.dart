import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/CustomCard.dart';
import 'package:whatsapp_clone/Widgets/chattextWdget.dart';
import '../Widgets/CustomCard.dart';
import '../Widgets/chattextWdget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){},
      child: Icon(Icons.chat),),
          body: ListView(children: [
           CustomCard(),
           chattextWidget('blue', 'Sadaf-W', '4:38', 'I am not at home'),
           chattextWidget('purple', 'Workplace Group', '5:30', 'No class tomorrow'),
          
          ],),
    );
  }
}