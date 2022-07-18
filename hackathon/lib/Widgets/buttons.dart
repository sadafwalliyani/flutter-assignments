import 'package:flutter/material.dart';

Widget buildButton(void Function() onPressed, String label, double? elevation) {
  return OutlinedButton(
    onPressed: onPressed,
    child: Text(label),
    style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
          width: 2,
          color: Colors.blue,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: elevation ?? 0
    ),
  );
}