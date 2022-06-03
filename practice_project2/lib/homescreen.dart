import 'package:flutter/material.dart';
import 'package:practice_project2/boxWidget.dart';
import 'package:practice_project2/statefullclass.dart';
import 'package:practice_project2/textWidget.dart';


class homescreen extends StatelessWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("My Dummy App"))),
    body: SingleChildScrollView(
      child: Column(
        children: [
      SpecialBox(),
      boxWidget(Colors.amber),
      boxWidget(Colors.cyan),
      boxWidget(Colors.black87),
      boxWidget(Colors.blue),
      boxWidget(Colors.pink),
      boxWidget(Colors.purple,paramchild: textWidget("Scroll horizanotal")),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
          boxWidget(Colors.orange),
          boxWidget(Colors.green),
          boxWidget(Colors.amber),
          boxWidget(Colors.cyan),
          boxWidget(Colors.black87),
          boxWidget(Colors.blue),
          boxWidget(Colors.pink),
          SpecialBox(),
          boxWidget(Colors.purple),
          boxWidget(Colors.orange,paramchild: textWidget("Scroll horizanotal")),
          ],
        ),
      ),
      boxWidget(Colors.amber),
      boxWidget(Colors.cyan),
      boxWidget(Colors.black87),
      boxWidget(Colors.blue),
      SpecialBox(),
      boxWidget(Colors.pink),
      boxWidget(Colors.purple,paramchild: textWidget("Scroll horizanotal")),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
        boxWidget(Colors.green),
        boxWidget(Colors.amber),
        boxWidget(Colors.cyan),
        boxWidget(Colors.black87),
        boxWidget(Colors.blue),
        boxWidget(Colors.pink),
        boxWidget(Colors.purple),
        boxWidget(Colors.orange),
          ],
        ),
      ),
      boxWidget(Colors.amber),
      boxWidget(Colors.cyan),
      boxWidget(Colors.black87),
      boxWidget(Colors.blue),
      boxWidget(Colors.pink),
      boxWidget(Colors.purple),
      boxWidget(Colors.orange),],),
    ),
    
      
    );
  }
}