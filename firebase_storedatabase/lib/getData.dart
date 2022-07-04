import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetUserData extends StatefulWidget {
  const GetUserData({Key? key}) : super(key: key);

  @override
  State<GetUserData> createState() => _GetUserDataState();
}

class _GetUserDataState extends State<GetUserData> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Center(
        child: FutureBuilder<QuerySnapshot>{
          future:user.get(),
          build(context,AsyncSnapshot<QuerySnapshot>snapshot){
            
          }

        },
       ),
    )
  }
}