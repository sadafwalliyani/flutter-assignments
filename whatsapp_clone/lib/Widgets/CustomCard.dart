import 'dart:ui';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          radius: 30,
         //       child: SvgPicture.assets('assets/groups.svg'),
        ),
        title: Text(
          "Jawan Pak Flutter Girls 2",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),e:\Flutter assignments\whatsapp_clone\lib\Widgets\CustomCard.dart
        subtitle: Row(
          children: [
            Icon(Icons.done_all, color: Colors.blue),
            SizedBox(
              width: 3,
            ),
            Text(
              "+92 334253484: Join",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ));
  }
}
