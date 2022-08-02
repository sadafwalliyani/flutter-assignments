// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   String url = 'https://jsonplaceholder.typicode.com/users';
//   getUser() async {
//     var response = await http.get(
//       Uri.parse(url),
//     );
//     var data = jsonDecode(response.body);
//     return data;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: 
//       // Center(
//       //   child: ElevatedButton(
//       //       onPressed: () {
//       //         getUser();
//       //       },
//       //       child: const Text("get")),
//       // ),
//       FutureBuilder(
//           future: getUser(),
//           builder: (context, AsyncSnapshot snapshot) {
//             if (!snapshot.hasData) {
//               return const CircularProgressIndicator();
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (context, index) {
//                   return
//                       ListTile(
//                     title: Text(snapshot.data[index]['name']),
//                     subtitle: Text(snapshot.data[index]['username']),
//                     leading: Text(snapshot.data[index]['id'].toString()),
//                     trailing: Text(snapshot.data[index]['address']['zipcode']),
                    
//                   );
//                 },
//               );
//             }
//           }),
//     );
//   }
// }


//with model
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
      body: 
      // Center(
      //   child: ElevatedButton(
      //       onPressed: () {
      //         getUser();
      //       },
      //       child: const Text("get")),
      // ),
      FutureBuilder(
          future: getUsers(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return
                      ListTile(
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].username),
                    leading: Text(snapshot.data[index].id.toString()),
                    trailing: Text(snapshot.data[index].address.zipcode),
                    
                  );
                },
              );
            }
          }),
    );
  }
}
