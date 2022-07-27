import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practiceoftest/services/user_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(future: getUser(),
      builder: (context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          return const CircularProgressIndicator();
        }
        else{
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context,index){
              return 
            //   ListTile(title: Text(snapshot.data[index].a),
            // subtitle: Text(snapshot.data[index].d),);
              ListTile(
                title:  Text(snapshot.data[index].name),
              );
            },
          );
        }
      }),
      
    );
  }
}