import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget elevatedBttonWidget(colorr,textt,iconn) {
  return
  ElevatedButton.icon(
  onPressed: () {},  
   icon:ImageIcon(iconn,
   size:40,
   ),
            
      
  label: Text(textt,
  maxLines:1,
  style: TextStyle(fontFamily:'Play',fontSize: 12,fontWeight: FontWeight.w400),),
  style: ElevatedButton.styleFrom(
        primary: colorr,
        fixedSize: Size(150, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          
        ),
  ));



}

