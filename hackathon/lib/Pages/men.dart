import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/gridview.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bottomnavigation.dart';

class men extends StatefulWidget {
  const men({Key? key}) : super(key: key);

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: gridviewwidget(),
    );
  }
}
