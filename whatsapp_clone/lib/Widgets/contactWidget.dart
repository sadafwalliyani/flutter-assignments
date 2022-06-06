import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget contactWidget(titlee,subtitleee) {
  return ListTile(
      leading: CircleAvatar(
        radius: 30,
     // child: AssetImage('assets/groups.svg'),
      //  child: SvgPicture.assets('assets/groups.svg'),
      ),
      title: Text(
        titlee,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
                child: Row(
            children: [
              Icon(Icons.call,color:Colors.green,),
              Icon(Icons.video_call,color:Colors.green,),
              SizedBox(
                width: 3,            
              ),
              Text(subtitleee,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
      ));
}
