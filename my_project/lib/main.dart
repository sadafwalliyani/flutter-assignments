import 'package:flutter/material.dart';
import 'Dashboard.dart';

void main(){
  runApp(MyAp());

}
class MyAp extends StatelessWidget {
  const MyAp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Dashboard(),
      
    );
  }
}