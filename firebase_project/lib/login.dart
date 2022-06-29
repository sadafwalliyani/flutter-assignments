import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

signIntoApp() async {
    try {
    final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailcon.text,
        password: passwordcon.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user');
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: emailcon,
        ),
        TextField(
          controller: passwordcon,
        ),
        ElevatedButton(onPressed: (){
signIntoApp();
           Navigator.pushReplacement<void,void>(context,
                        MaterialPageRoute<void>(builder: (context) => HomeScreen()));

        }, child: Text("Login")),
      ]),
    );
  }
}