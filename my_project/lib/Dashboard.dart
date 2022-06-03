
import 'package:flutter/material.dart';
import 'package:my_project/Specialoffers.dart';
import 'package:my_project/boxwidget.dart';
import 'package:my_project/textwidget.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("My App")),),
    body: SingleChildScrollView(
      child: Column(children: [
        boxWidget(Colors.pink, paramchild:textWidget("Special offers")),        
        boxWidget(Colors.blue,paramchild: textWidget("Updates")),        
        boxWidget(Colors.red, paramchild:textWidget("New Deals")), 
        Specialoffers(),       
             ],),
    ),
      
      
    );
  }
}