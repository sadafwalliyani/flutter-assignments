import 'package:flutter/material.dart';

void main(){
  runApp(loginScreen());

}
class loginScreen extends StatelessWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
     home:
      Scaffold(appBar: AppBar(title: Center(child: Text("Login ID")),),
     body:Center(
       child: Center(
         child: Column(
                      children: [
             SizedBox(height: 50,),
             Container(width: 200,child: TextField()),
             SizedBox(height: 50,),
             Container(width: 200,child: TextField()),
             ElevatedButton(onPressed: (){}, child: Text("Login")),
           ],
         ),
       ),
     )
     
     
     ), );     

  }
}