import 'package:flutter/material.dart';
import 'listinfo.dart';
import 'const.dart';

class Romen extends StatelessWidget {
  Liste liste = Liste();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                padding: EdgeInsets.only(top: 25, left: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/Romen/romen.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black45, BlendMode.darken))),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Image(image: AssetImage("images/Romen/romulus.jpg")),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Remus ve Romulus",
                        style: klogin,
                      ),
                    ),
                    Text(
                      liste.romeninfo(0),
                      style: kTextstyle,
                    ),
                    Image(image: AssetImage("images/Romen/albalonga.jpg")),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Alba Longa",
                        style: klogin,
                      ),
                    ),
                    Text(
                      liste.romeninfo(1),
                      style: kTextstyle,
                    ),
                    Image(image: AssetImage("images/Romen/remus.jpg")),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Remus'un Ölümü",
                        style: klogin,
                      ),
                    ),
                    Text(
                      liste.romeninfo(2),
                      style: kTextstyle,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Color(0xFF274D75),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                )))));
  }
}
