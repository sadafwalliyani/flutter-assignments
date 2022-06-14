import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget elevatedBttonWidget(colorr,textt,iconn) {
  return
  ElevatedButton.icon(
  onPressed: () {},
  icon: Icon( // <-- Icon
    iconn,
    size: 30.0,
    
              ),
              
      
  label: Text(textt,
  style: TextStyle(fontFamily:'Play',fontSize: 10,fontWeight: FontWeight.w400),),
  style: ElevatedButton.styleFrom(
        primary: colorr,
        fixedSize: Size(150, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          
        ),
));



}

