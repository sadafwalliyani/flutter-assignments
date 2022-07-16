

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class GetUserData extends StatefulWidget {
  const GetUserData({Key? key}) : super(key: key);

  @override
  State<GetUserData> createState() => _GetUserDataState();
}

class _GetUserDataState extends State<GetUserData> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> deleteUser(docId) {
    return users
        .doc(docId)
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: FutureBuilder<QuerySnapshot>(
          future: users.get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> abc =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: Text(abc['age'].toString()),
                  subtitle: Text(abc['company'].toString()),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        deleteUser(document.id);
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              }).toList());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );

    // return Scaffold(
    //     body: Center(
    //         child: FutureBuilder<QuerySnapshot>(
    //             future: users.get(),
    //             builder: (context, snapshot)
    //                 {
    //               if (snapshot.hasData) {
    //                 return ListView(
    //                   children:
    //                       snapshot.data!.docs.map((DocumentSnapshot document) {
    //                     Map<String, dynamic> data =
    //                         document.data() as Map<String, dynamic>;
    //                     return ListTile(
    //                         title: Text(data["FullName"]),
    //                         subtitle: Text(data["Company"]),
    //                         trailing: IconButton(
    //                             onPressed: () {
    //                               setState(() {
    //                                 deleteUser(document.id);
    //                               });
    //                             },
    //                             icon: Icon(Icons.delete)));
    //                   }).toList(),
    //                 );
    //               } else {
    //                 return CircularProgressIndicator();
    //               }
    //             })));
  }
}

