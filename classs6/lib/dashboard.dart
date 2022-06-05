import 'package:classs5/Chat.dart';
import 'package:classs5/main.dart';
import 'package:classs5/text.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                        title:const Text("Login"),),
        body:ListView(children:  [
          Center(child: Image.asset('assests/icon.JPG',height: 200,width: 200,)),
  


        textWidget(Colors.yellow, "Zara", '2:31', "Please Cancel the program",),
       textWidget(Colors.blue, "Sadaf", '2:33', "I will not be able to attend school tomorrow"),       
      //  textWidget(Colors.red, "Tehreem", '2:35', "Mae jarahi hu sony"),
      //  textWidget(Colors.yellow, "Zara", '2:36', "Ja ja Soja"),
      //  textWidget(Colors.blue, "Sadaf", '2:33', "😋"),
      //     textWidget(Colors.red, "Madiha", '2:30', "See you tomorrow"),
      //  textWidget(Colors.yellow, "Zara", '2:31', "Please Cancel the program"),
      //  textWidget(Colors.blue, "Sadaf", '2:33', "I will not be able to attend school tomorrow"),       
      //  textWidget(Colors.red, "Tehreem", '2:35', "Mae jarahi hu sony"),
      //  textWidget(Colors.yellow, "Zara", '2:36', "Ja ja Soja"),
      //  textWidget(Colors.blue, "Sadaf", '2:33', "😋"),
      //     textWidget(Colors.red, "Madiha", '2:30', "See you tomorrow"),
      //  textWidget(Colors.yellow, "Zara", '2:31', "Please Cancel the program"),
      //  textWidget(Colors.blue, "Sadaf", '2:33', "I will not be able to attend school tomorrow"),       
      //  textWidget(Colors.red, "Tehreem", '2:35', "Mae jarahi hu sony"),
      //  textWidget(Colors.yellow, "Zara", '2:36', "Ja ja Soja"),
      //  textWidget(Colors.blue, "Sadaf", '2:33', "😋"),
        
        ],
        ),
        
        
              );
      
    
  }
}