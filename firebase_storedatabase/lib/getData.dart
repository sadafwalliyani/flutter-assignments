import 'dart:html';

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
  CollectionReference users=FirebaseFirestore.instance.collection("users");
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Center(
        child: 
        FutureBuilder<QuerySnapshot>{
          future:users.get(),
          builder:(context,AsyncSnapshot<QuerySnapshot>snapshot){ 
if(snapshot.hasData){
  return ListView(children: [
 snapshot.data!.docs.map(DocumentSnapshot document){
        Map<String,dynamic> data=document.data() as Map<String, dynamic>;
    return ListView(build(
      title:Text["FullName"],
      subtitle:Text["Company"],
      trailing:IconButton(onPressed: (){

        
      }, icon: Icon(Icons.delete)))
      );
      } .toList(),
    ], 
  );
  

} else{

        return CircularProgressIndicator();
      
      
}
          }
        }
        )
        );
  }
}