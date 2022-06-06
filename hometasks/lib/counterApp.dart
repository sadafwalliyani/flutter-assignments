import 'package:flutter/material.dart';
//import 'package:navigateetc/constants/app_text.dart';




class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  num count = 0;
  addValue() {
    setState(() {
      count++;
      print(count);
    });
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$count",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                addValue();
              },
              child: Text("AppTextConstant.appTitle"),
            ),
          )
        ],
      ),
    );
  }
}
