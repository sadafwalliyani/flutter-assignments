import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget chattextWidget(colorr, titlee, timee, subtitleee) {
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
      subtitle: Row(
          children: [
            Icon(Icons.done_all, color: Colors.blue),
            SizedBox(
              width: 3,
            ),
            Text(subtitleee,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ));
}
