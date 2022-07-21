import 'package:flutter/material.dart';
import 'package:untitled2/main.dart';

class Things extends StatefulWidget {
  @override
  _ThingsState createState() => _ThingsState();
}

class _ThingsState extends State<Things> {
  bool screttext = false;
  String newvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white10.withOpacity(0.8), BlendMode.modulate),
              image: AssetImage("images/sherlock.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 120, top: 62),
                child: CircleAvatar(
                  radius: 97,
                  backgroundImage: AssetImage(
                    "images/sh.jpg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 220,
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Do You Need Case ?",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Get ready for Sherlock's adventures",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Opacity(
              opacity: 0.6,
              child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  highlightColor: Colors.deepOrange.shade700,
                  splashColor: Colors.brown,
                  child: Text(
                    "Start",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Raleway"),
                  ),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, "home2");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
