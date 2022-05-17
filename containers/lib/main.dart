import 'package:containers/Screen/Home.dart';
import 'package:containers/Screen/Screen2.dart';
import 'package:flutter/material.dart';

void main(){
runApp(myApp());

}
class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Screen2()
      
    );
  }
}