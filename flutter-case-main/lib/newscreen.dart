import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled2/allstuff.dart';
import 'package:untitled2/case_list.dart';
import 'cases.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

AllStuff allStuff = AllStuff();

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
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
              Container(
                padding: EdgeInsets.only(top: 165),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Choose a case..",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Cases(
                    onpress: () {
                      Navigator.pushNamed(context, "home3");
                      setState(() {
                        allStuff.zero();
                      });
                    },
                    text: "A Study in Scarlet",
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Alignin(
                texti: "The Sign of the Four",
                onpressi: () {
                  Navigator.pushNamed(context, "home3");
                  setState(() {
                    allStuff.zero();
                    allStuff.plus1();
                  });
                },
              ),
              SizedBox(
                height: 7,
              ),
              Alignin(
                texti: "The Hound of the Baskervilles",
                onpressi: () {
                  Navigator.pushNamed(context, "home3");
                  setState(() {
                    allStuff.zero();
                    allStuff.plus2();
                  });
                },
              ),
              SizedBox(
                height: 7,
              ),
              Alignin(
                texti: "The Valley of Fear",
                onpressi: () {
                  Navigator.pushNamed(context, "home3");
                  setState(() {
                    allStuff.zero();
                    allStuff.plus3();
                  });
                },
              ),
              SizedBox(
                height: 7,
              ),
              Alignin(
                texti: "The adventure of sussex vampir's",
                onpressi: () {
                  Navigator.pushNamed(context, "home3");
                  setState(() {
                    allStuff.zero();
                    allStuff.plus4();
                  });
                },
              ),
              SizedBox(
                height: 7,
              ),
              Alignin(
                texti: "Warning ",
                onpressi: () {
                  Navigator.pushNamed(context, "home3");
                  setState(() {
                    allStuff.zero();
                    allStuff.plus5();
                  });
                },
              ),
              SizedBox(
                height: 7,
              ),
              Alignin(
                texti: "copper colored beech trees ",
                onpressi: () {
                  Navigator.pushNamed(context, "home3");
                  setState(() {
                    allStuff.zero();
                    allStuff.plus6();
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.black,
                            size: 40,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
