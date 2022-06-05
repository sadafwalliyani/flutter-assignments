import 'package:flutter/material.dart';

 Widget chatWidget(titlee,subtitlee,{trailing,leading}){
//   String leading,String backgroundColor,[title,subtitle,trailig]
  return(
    Column(children: [
           Container(
             margin: EdgeInsets.only(bottom:1),
             child: ListTile(
               tileColor: Color.fromARGB(255, 8, 115, 168),
              leading:CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
               ) ,
                  ),
           ),
        ],)
  );
}