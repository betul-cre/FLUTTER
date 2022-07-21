import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 25, left: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/horseman.jpg"),
                    fit: BoxFit.cover)),
            child: GridView.count(
              childAspectRatio: 0.87,
              crossAxisCount: 2,
              children: [
                widget(
                  onpress: () {
                    Navigator.pushNamed(context, "norse");
                  },
                  assetImage: AssetImage("images/Norse/norse.jpg"),
                  text: "İskandinav Mitolojisi",
                ),
                widget(
                  onpress: () {
                    Navigator.pushNamed(context, "greek");
                  },
                  assetImage: AssetImage("images/Greek/greek.jpg"),
                  text: "Yunan Mitolojisi",
                ),
                widget(
                  onpress: () {
                    Navigator.pushNamed(context, "romen");
                  },
                  assetImage: AssetImage("images/Romen/romen.jpg"),
                  text: "Roma Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/egypt.jpg"),
                  text: "Mısır Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/sumerian.jpg"),
                  text: "Sümer Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/chinese.jpg"),
                  text: "Çin Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/indian.jpg"),
                  text: "Hint Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/turk.jpg"),
                  text: "Türk Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/japan.jpg"),
                  text: "Japon Mitolojisi",
                ),
                widget(
                  assetImage: AssetImage("images/arabian.jpg"),
                  text: "Arap Mitolojisi",
                ),
              ],
            )),
      ),
    );
  }
}
