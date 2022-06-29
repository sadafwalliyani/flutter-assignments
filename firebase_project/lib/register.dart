import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class registeration extends StatefulWidget {
  const registeration({Key? key}) : super(key: key);

  @override
  State<registeration> createState() => _registerationState();
}

class _registerationState extends State<registeration> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

signUpFunction() async {
    try {
     final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    
  
  return Scaffold(


    body: Column(
      children: [
        TextField(
          controller: emailcontroller,
        ),
        
        TextField(
          controller: passwordcontroller,
        ),
        ElevatedButton(onPressed: () {
                          signUpFunction();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) =>
                          //             const Login()));

        }, child: Text("Register")),
      ],
    ),

  );  

  }
}