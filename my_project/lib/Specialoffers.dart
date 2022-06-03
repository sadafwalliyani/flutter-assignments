import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Specialoffers extends StatefulWidget {
  const Specialoffers({ Key? key }) : super(key: key);

  @override
  State<Specialoffers> createState() => _SpecialoffersState();
}

class _SpecialoffersState extends State<Specialoffers> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
  height: 100,
  width: 200,
  color: Color.fromARGB(255, 131, 235, 12),
  child: Center(child: Text("Deals",style:TextStyle(color: Colors.black, fontSize: 50,),)),
          ),
    );
  }
}