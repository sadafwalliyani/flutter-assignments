import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
var users =FirebaseFirestore.instance.collection('users');
Future<void> addUser() {
// Call the user's CollectionReference to add a new user
return users
.add({

'full_name': "fullName", // John Doe
'company': "company", // Stokes and Sons
'age': "age" // 42
})
.then((value) => print("User Added"))
.catchError((error) => print("Failed to add user: $error"));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          addUser();

        }, child: Text("Add"))
        
      )
    );
  }
}