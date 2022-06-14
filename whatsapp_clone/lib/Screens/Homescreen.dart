import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/calls.dart';
import 'package:whatsapp_clone/Pages/camera.dart';
import 'package:whatsapp_clone/Pages/chatPage.dart';
import 'package:whatsapp_clone/Pages/status.dart';

import '../Widgets/popupWidget.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>with SingleTickerProviderStateMixin{
  late TabController _controller;
  @override
  void initState() { // TODO: implement initState
    _controller=TabController(length: 4, vsync: this, initialIndex: 1);}  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title:Text("WhatsApp Business"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
popupWidget("child", "value"),
],     
bottom: TabBar(
controller: _controller,
indicatorColor: Colors.white,
tabs:
   [Tab(icon:Icon(Icons.camera_alt),),
Tab(text: "CHATS",),
Tab(text:"STATUS"),
Tab(text: "CALLS",),

],),), 
body:  TabBarView(
         controller:_controller,
        children: [
CameraPage(),
ChatPage(),
StatusPage(),
CallsPage(),
      ]),
      );
       
  }
}
