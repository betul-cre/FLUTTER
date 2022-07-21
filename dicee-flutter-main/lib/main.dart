import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;
  void Changenumber() {
    setState(() {});
    RightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                Changenumber();
              },
              child: Image.asset(
                "images/dice$leftDiceNumber.png",
                width: 200.00,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                Changenumber();
              },
              child: Image.asset(
                "images/dice$RightDiceNumber.png",
                width: 200.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
