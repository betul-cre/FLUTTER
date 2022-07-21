import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              "ASK ME ANYTHİNG",
              style: TextStyle(
                color: Colors.orangeAccent,
                fontFamily: "Redressed",
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: MagicBall(),
      )),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int Ballnumber = 1;
  void ChangeBall() {
    setState(() {
      Ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeBall();
              },
              child: Image.asset(
                "images/ball$Ballnumber.png",
                width: 400.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
