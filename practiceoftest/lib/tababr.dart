import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tabbarr extends StatefulWidget {
  const Tabbarr({Key? key}) : super(key: key);

  @override
  State<Tabbarr> createState() => _TabbarrState();
}

class _TabbarrState extends State<Tabbarr> {
  @override
  Widget build(BuildContext context) {
    return (DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat),
            ),
            Tab(icon: Icon(Icons.call)),
            Tab(icon: Icon(Icons.contact_mail)),
          ]),
        ),
        body: TabBarView(children: [Center(
child: Text("Its Chat Screen"),
        ),Center(
child: Text("All Call logs here"),
        )
        ,Center(
child: Text("All Contact logs here"),
        )
        
        ]),)
        )
        );
  }
}
