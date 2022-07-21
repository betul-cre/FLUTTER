import 'package:flutter/material.dart';
import 'allstuff.dart';
import 'newscreen.dart';

class Secondcase extends StatefulWidget {
  @override
  _SecondcaseState createState() => _SecondcaseState();
}

class _SecondcaseState extends State<Secondcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white10.withOpacity(0.8), BlendMode.modulate),
            image: AssetImage("images/sherlock.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(children: [
        Opacity(
          opacity: 0.8,
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                allStuff.getname(),
                style: TextStyle(fontSize: 20),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orangeAccent),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white10.withOpacity(0.8), BlendMode.modulate),
                  image: AssetImage("images/parschment.jpg"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              allStuff.getcase(),
              style: TextStyle(
                fontFamily: "Raleway",
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Opacity(
            opacity: 0.6,
            child: FlatButton(
              child: Text(
                allStuff.getanswer(),
                style: TextStyle(fontSize: 20, fontFamily: "Raleway"),
              ),
              onPressed: () {
                setState(() {});
              },
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              highlightColor: Colors.deepOrange.shade700,
              splashColor: Colors.brown,
            )),
        SizedBox(
          height: 20,
        ),
        Opacity(
            opacity: 0.6,
            child: FlatButton(
              child: Text(
                allStuff.getanswertwo(),
                style: TextStyle(fontFamily: "Raleway", fontSize: 20),
              ),
              onPressed: () {
                setState(() {});
              },
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              highlightColor: Colors.deepOrange.shade700,
              splashColor: Colors.brown,
            )),
        SizedBox(
          height: 20,
        ),
        Opacity(
            opacity: 0.6,
            child: FlatButton(
              child: Text(
                allStuff.getanswerthree(),
                style: TextStyle(fontFamily: "Raleway", fontSize: 20),
              ),
              onPressed: () {
                setState(() {});
              },
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              highlightColor: Colors.deepOrange.shade700,
              splashColor: Colors.brown,
            )),
        SizedBox(
          height: 100,
        ),
      ]),
    ));
  }
}
