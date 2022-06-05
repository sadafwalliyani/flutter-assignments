import 'package:classs5/imgWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textWidget(colorr,titlee,timee,subtitleee,){
  return ListTile(
            leading:CircleAvatar(
              //backgroundImage: imgWidget('assests/icon.JPG',height: 200,width: 200,),                               
            backgroundColor: colorr,
              radius: 20,
             ) ,
         title:Text(titlee),
         subtitle: Text(subtitleee),
         trailing: Wrap(spacing: 20,
         children: [
             Icon(Icons.done_all),
           Text(timee)
         ],)

          );
}