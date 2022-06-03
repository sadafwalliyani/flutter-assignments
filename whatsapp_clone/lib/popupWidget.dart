import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget popupWidget(child,value){
  return(
    PopupMenuButton<String>(
      onSelected: (value){
        print(value);
      },
      itemBuilder: (BuildContext context) {
  return[
    PopupMenuItem(
      child:Text("Business tools"),
    value: "Business tools"
    ),
        PopupMenuItem(
      child:Text("New group"),
    value: "New group"
    ),
     PopupMenuItem(
      child:Text("New Broadcast"),
    value: "New broadcast"
    ),
    PopupMenuItem(
      child:Text("Labels"),
    value: "Labels"
    ),
     PopupMenuItem(
      child:Text("Linked device"),
    value: "Linked device"
    ),
      PopupMenuItem(
      child:Text("Starred messages"),
    value: "Starred messages"
    ),
     PopupMenuItem(
      child:Text("Setting"),
    value: "Setting"
    ),
    
  ];
})


  );
}