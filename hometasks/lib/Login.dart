import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hometasks/counterApp.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CounterApp()));
        },
        child: Text("Login"),),
      ),
    );
  }
}
