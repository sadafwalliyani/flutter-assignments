import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget searchbarWidget(searchbar) {
  return (Container(
      width: 200,
     
      // color: Color.fromARGB(255, 254, 254, 255),
      child: TextField(
        decoration: InputDecoration(
          
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
            filled: true,
            hintStyle: TextStyle(color: Color.fromARGB(255, 223, 215, 215),fontFamily: 'Play',fontSize: 12,
            fontWeight: FontWeight.w700,wordSpacing: 0.3,),
            hintText:"Search Users,ID's etc",
            prefixIcon: Icon(Icons.search),
            fillColor: Color(0xff343645)),
      )));
}
