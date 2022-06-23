import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget btnWidget(textt){
   return(  
 
  Container(
  height: 50.0,
  child: RaisedButton(
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff219ebc), Color(0xff023047)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 95, minHeight: 60.0),
        alignment: Alignment.center,
        child: Text(
          textt,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,          ),
        ),
      ),
    ),
  ),
)
  );
}