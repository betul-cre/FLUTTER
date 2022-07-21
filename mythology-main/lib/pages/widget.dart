import 'package:flutter/material.dart';
import 'const.dart';

class widget extends StatelessWidget {
  widget({this.text, this.assetImage, this.onpress});
  final String text;
  final AssetImage assetImage;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          onPressed: onpress,
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(image: assetImage, fit: BoxFit.cover),
              color: Colors.black45,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        Text(
          text,
          style: ktextstyle,
        )
      ],
    );
  }
}
