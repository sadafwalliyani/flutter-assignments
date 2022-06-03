import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project2/textWidget.dart';

class SpecialBox extends StatefulWidget {
  const SpecialBox({ Key? key }) : super(key: key);

  @override
  State<SpecialBox> createState() => _SpecialBoxState();
}

class _SpecialBoxState extends State<SpecialBox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 200,
        color: Color.fromARGB(255, 26, 3, 233),
        child: textWidget("Special offer"),
        
        
        
      ),
    );
  }
}