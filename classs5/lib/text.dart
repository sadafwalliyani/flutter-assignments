import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textWidget(colorr,titlee,timee,subtitleee){
  return ListTile(
            leading:CircleAvatar(
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