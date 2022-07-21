import 'dart:ui';

import 'package:flutter/material.dart';

class Cases extends StatelessWidget {
  Cases({this.text, this.onpress});
  String text;
  Function onpress;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: FlatButton(
        color: Colors.orangeAccent,
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        highlightColor: Colors.deepOrange.shade700,
        splashColor: Colors.brown,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, fontFamily: "Raleway"),
        ),
        onPressed: onpress,
      ),
    );
  }
}

class Alignin extends StatelessWidget {
  Alignin({this.onpressi, this.texti});
  Function onpressi;
  String texti;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        child: Cases(
          onpress: onpressi,
          text: texti,
        ),
      ),
    );
  }
}
