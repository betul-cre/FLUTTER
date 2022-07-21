import 'package:flutter/material.dart';

class paddingstuff extends StatelessWidget {
  paddingstuff({this.color, this.onpress, this.text});
  final Color color;
  final Function onpress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 7.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
            onPressed: onpress,
            height: 42.0,
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
