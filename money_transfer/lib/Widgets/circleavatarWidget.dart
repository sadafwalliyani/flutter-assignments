import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circleavatarWidget(img){
  return(
    CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: 
                
                AssetImage(img),
              ),
            )
  );
}