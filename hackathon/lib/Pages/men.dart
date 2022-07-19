import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class men extends StatefulWidget {
  const men({Key? key}) : super(key: key);

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  CollectionReference data = FirebaseFirestore.instance.collection('data');
  Future<void> deleteUser(docId) {
    return data
        .doc(docId)
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: 
      
      Center(
        child: FutureBuilder<QuerySnapshot>(
          future: data.get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> abc =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: Text(abc['productsList'].toString()),
                
                  // trailing: 
                  // IconButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       deleteUser(document.id);
                  //     });
                  //   },
                  //   icon: Icon(Icons.delete),
                  // ),
                );
              }).toList());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
