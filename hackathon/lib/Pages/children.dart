import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/gridview.dart';
import 'package:practiceoftest/Widgets/pictureslider.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

class children extends StatefulWidget {
  const children({Key? key}) : super(key: key);

  @override
  State<children> createState() => _childrenState();
}

class _childrenState extends State<children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pictureslider(),
    );
  }
}
