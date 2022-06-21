import 'package:flutter/material.dart';

class todoApp extends StatefulWidget {
  const todoApp({Key? key}) : super(key: key);

  @override
  State<todoApp> createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {
  List<String> chatNames = ["Sadaf", "Sammra"];
  TextEditingController addTextController = TextEditingController();
  addName() {
    setState(() {
      chatNames.add(addTextController.text);
      addTextController.clear();
    });
    print(chatNames);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
            body: SafeArea(
              
      child: SingleChildScrollView(
        child: Column(
          
          children: [
          
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: addTextController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                addName();
              },
              child: Text("Add"),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: chatNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(chatNames[index]),
                    tileColor: Colors.white,
                    trailing: IconButton(
                        onPressed: () {
                          chatNames.removeAt(index);
                        },
                        icon: Icon(Icons.delete)),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
