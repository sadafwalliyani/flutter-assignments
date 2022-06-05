import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({ Key? key }) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  var count=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
            body:Center(child:ElevatedButton(onPressed:(){}, child: Text("Counter")),   
               
    ),);
  }
}

  