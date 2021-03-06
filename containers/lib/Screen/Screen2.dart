import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
     child: 
          Container(
        child: Column(
          children: [
                    Container(
            width:150,
            height:150,
            color: Colors.brown,
            child: Text("Sadaf"),
          ),          
          Container(
            width:150,
            height:150,
            color: Colors.red,
            child: Text("Sadaf"),
          ),
           Container(
            width:150,
            height:150,
            color: Colors.pink,
            child: Text("Sadaf"),
          ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width:150,
                  height:150,
                  color: Colors.blue,
                  child: Text("Sadaf"),
                ),
                Container(
                  width:150,
                  height:150,
                  color: Colors.cyan,
                  child: Text("Sadaf"),
                ),
                Container(
                  width:150,
                  height:150,
                  color: Color.fromARGB(255, 155, 45, 5),
                  child: Text("Sadaf"),
                ),
                 Container(
                  width:150,
                  height:150,
                  color: Color.fromARGB(255, 206, 101, 63),
                  child: Text("Sadaf"),
                ),
                 Container(
                  width:150,
                  height:150,
                  color: Color.fromARGB(255, 223, 144, 116),
                  child: Text("Sadaf"),
                ),
                 Container(
                  width:150,
                  height:150,
                  color: Colors.indigo,
                  child: Text("Sadaf"),
                ),
              ],
            ),
          ),
           
           Container(
            width:150,
            height:150,
            color: Colors.cyanAccent,
            child: Text("Sadaf"),
          ),
        ]),
      ),
      
     ) );
  }
}