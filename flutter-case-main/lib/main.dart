import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/case_list.dart';
import 'package:untitled2/newscreen.dart';
import 'package:untitled2/secondcase.dart';
import 'home.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => Things(),
        "home2": (context) => NewScreen(),
        "home3": (context) => Case(),
        "home4": (context) => Secondcase(),
      },
    );
  }
}
