import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List<String> allTodods = [];
  TextEditingController name = TextEditingController();
  TextEditingController updatenames = TextEditingController();
  addValue() {
    setState(() {
      allTodods.add(name.text);
      name.clear();
    });
  }

  deleteValue(index) {
    setState(() {
      allTodods.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
      ),
      body: 
      SafeArea(child: SingleChildScrollView(child: 
      Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextField(
              controller: name,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: ElevatedButton(
              onPressed: () {
                addValue();
              },
              child: Text("Add Todo"),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: allTodods.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    tileColor: Colors.grey,
                    title: Text(allTodods[index]),
                    trailing: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Row(children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Edit ToDo"),
                                    content: TextField(
                                      controller: updatenames,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            setState(() {
                                              allTodods.replaceRange(
                                                index,
                                                index + 1,
                                                {updatenames.text},
                                              );
                                              updatenames.clear();
                                            });
                                          },
                                          child: Text("Edit"))
                                    ],
                                  );
                                });
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            deleteValue(index);
                          },
                          icon: Icon(Icons.delete),
                        )
                      ]),
                    ),
                  );
                })),
          )
        ],
      ),))
      
    );
  }
}
