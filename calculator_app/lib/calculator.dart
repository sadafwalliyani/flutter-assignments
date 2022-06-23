import 'package:assignment_7/widget/buttonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculatorApp extends StatefulWidget {
  @override
  State<calculatorApp> createState() => _calculatorAppState();
}

class _calculatorAppState extends State<calculatorApp> {
  var result="";
  Widget btnWidget(textt){
   return(  
 
  Container(
  height: 50.0,
  child: RaisedButton(
    onPressed: () {
      setState(() {
        result=result+textt;
      });
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff219ebc), Color(0xff023047)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 95, minHeight: 60.0),
        alignment: Alignment.center,
        child: Text(
          textt,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,          ),
        ),
      ),
    ),
  ),
)
  );
}

clear(){
  setState(() {
  result="";  
  });
  
}
output(){
  Parser p=Parser();
  Expression exp=p.parse(result);
  ContextModel cm=ContextModel();
  double eval=exp.evaluate(EvaluationType.REAL,cm);
  setState(() {
    result=eval.toString();
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff023047),
        appBar: AppBar(
          backgroundColor: Color(0xff023047),
          title: Center(
            child: Text("CalculatorApp",
                style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,          ),
        ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Container(
                height: 250,
                width: 406,
                color: Color(0xff8ecae6),
                child: 
                Padding(
                  padding: EdgeInsets.only(top:180,
                  right: 5),
                  child: Text(result,
                               textAlign: TextAlign.right,
                  // textDirection:TextDirection.rtl,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize:50,
                  fontWeight: FontWeight.bold,          ),
                        ),
                ),
              ),
              Container(
                height: 100,
                width: 406,
                color: Color(0xff219ebc),
                child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        btnWidget("AC"),
                        btnWidget("%"),
                        btnWidget("/"),
                     Container(
  height: 50.0,
  child: RaisedButton(
    onPressed: () {
      clear();
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff219ebc), Color(0xff023047)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 95, minHeight: 60.0),
        alignment: Alignment.center,
        child: Text(
          "DEL",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,          ),
        ),
      ),
    ),
  ),
)
                      ],
                    ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                   height: 400,
                  width: 400,
        
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          btnWidget("7"),
                          btnWidget("8"),
                          btnWidget("9"),
                       Container(
  height: 50.0,
  child: RaisedButton(
    onPressed: output,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff219ebc), Color(0xff023047)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 95, minHeight: 60.0),
        alignment: Alignment.center,
        child: Text(
          "=",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,          ),
        ),
      ),
    ),
  ),
                      )],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          btnWidget("4"),
                          btnWidget("5"),
                          btnWidget("6"),
                          btnWidget("*"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          btnWidget("1"),
                          btnWidget("2"),
                          btnWidget("3"),
                          btnWidget("-"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          btnWidget("-"),
                          btnWidget("0"),
                          btnWidget("."),
                          btnWidget("+"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
