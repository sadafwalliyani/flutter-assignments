import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
              height: 400,              child: ListView.builder(
                itemCount: chatNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(chatNames[index]),
                    tileColor: Colors.white,
                    trailing: IconButton(onPressed: (){
                      chatNames.removeAt(index);
                    },
                    icon:Icon(Icons.delete)),
                    
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
