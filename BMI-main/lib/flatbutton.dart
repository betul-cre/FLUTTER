import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Flatbutton extends StatelessWidget {
  Flatbutton({this.icone, this.onpresse});

  final IconData icone;
  final Function onpresse;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: onpresse,
      child: Icon(
        icone,
        size: 25,
        color: Colors.black,
      ),
      backgroundColor: Colors.grey.shade800,
    );
  }
}
