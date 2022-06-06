import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({ Key? key }) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
     child: Icon(Icons.camera_alt_rounded ),),
     
      
    );
  }
}