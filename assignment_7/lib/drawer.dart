import 'package:assignment_7/tabbar.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
      title: Text("Drawer"),
      
    ),
    drawer: Drawer(
      child:
       Column(children:[
         SizedBox(width: MediaQuery.of(context).size.width*0.7,
         child: const DrawerHeader
         
         (
            margin: EdgeInsets.all(0),
          child:Text("Data",
         ),
         decoration: BoxDecoration(
          // color: Colors.black,
         ),),
         
        ),
        ListTile(
          tileColor: Colors.grey,
          title: Text("Profile"),
          onTap: (){
            TabBarrr();
          },
        ) ,
         ListTile(
          tileColor: Colors.grey,
          title: Text("Profile"),
          onTap: (){
            TabBarrr();
          },
        ) ,
         ListTile(
          tileColor: Colors.grey,
          title: Text("Profile"),
          onTap: (){
            TabBarrr();
          },
        ) ,
         ListTile(
          tileColor: Colors.grey,
          title: Text("Profile"),
          onTap: (){
            TabBarrr();
          },
        ), 
         ListTile(
          tileColor: Colors.grey,
          title: Text("Profile"),
          onTap: (){
            TabBarrr();
          },
        ) 
        ]       
    ),
    
      
     ) );
  }
}