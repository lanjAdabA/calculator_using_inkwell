import 'dart:developer';

import 'package:calculator/cal_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double firstNum = 0;
  double secondNum = 0;
  String history = "";
  String textToDisplay = "";
  String tempResult = "";
  String operation = "";

  void myButtonOntap(String myButtonValue) {
    if (myButtonValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      tempResult = '';
    } else if (myButtonValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      tempResult = '';
      history = '';
    } else if (myButtonValue == '+/-') {
      if (textToDisplay[0] != '-') {
        tempResult = '-$textToDisplay';
      } else {
        tempResult = textToDisplay.substring(1);
      }
    } else if (myButtonValue == 'del.') {
      tempResult = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (myButtonValue == '+' ||
        myButtonValue == '-' ||
        myButtonValue == 'x' ||
        myButtonValue == '÷') {
      firstNum = double.parse(textToDisplay);
      tempResult = textToDisplay + myButtonValue;
      operation = myButtonValue;
      tempResult = '';
    } else if (myButtonValue == '=') {
      secondNum = double.parse(textToDisplay);
      if (operation == '+') {
        tempResult = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        tempResult = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        tempResult = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '÷') {
        tempResult = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      tempResult = textToDisplay + myButtonValue;
      log(tempResult);
    }
    setState(() {
      textToDisplay = tempResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                // alignment: const Alignment(1.0, 1.0),
                color: Colors.blueGrey,
                padding: const EdgeInsets.only(right: 30, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          history,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textToDisplay,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 56,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.deepPurple,
                child: Table(
                  children: [
                    TableRow(children: [
                      CalButton(
                        text: "AC",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "C",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "del.",
                        callBack: myButtonOntap,
                        fillColor: 0xfff4d160,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "÷",
                        callBack: myButtonOntap,
                        fillColor: 0xfff4d160,
                        textSize: 30,
                      ),
                    ]),
                    TableRow(children: [
                      CalButton(
                        text: "1",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "2",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "3",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "x",
                        callBack: myButtonOntap,
                        fillColor: 0xfff4d160,
                        textSize: 30,
                      ),
                    ]),
                    TableRow(children: [
                      CalButton(
                        text: "4",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "5",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "6",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "-",
                        callBack: myButtonOntap,
                        fillColor: 0xfff4d160,
                        textSize: 30,
                      ),
                    ]),
                    TableRow(children: [
                      CalButton(
                        text: "7",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "8",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "9",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "+",
                        callBack: myButtonOntap,
                        fillColor: 0xfff4d160,
                        textSize: 30,
                      ),
                    ]),
                    TableRow(children: [
                      CalButton(
                        text: "+/-",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "0",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: ".",
                        callBack: myButtonOntap,
                        fillColor: 0xff8ac4d0,
                        textSize: 30,
                      ),
                      CalButton(
                        text: "=",
                        callBack: myButtonOntap,
                        fillColor: 0xfff4d160,
                        textSize: 30,
                      ),
                    ]),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
