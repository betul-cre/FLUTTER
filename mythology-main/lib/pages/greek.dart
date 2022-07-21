import 'package:flutter/material.dart';
import 'package:untitled1/pages/const.dart';
import 'listinfo.dart';

class Greeke extends StatelessWidget {
  Liste liste = Liste();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                padding: EdgeInsets.only(top: 25, left: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/Greek/greek.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black45, BlendMode.darken))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image(image: AssetImage("images/Greek/Chaos.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Kaos",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(0),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/gaia.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Gaia",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(1),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/tartaros.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Tartaros",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(2),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/eros.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Eros",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(3),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/erebos.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Erebose",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(4),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/nyx.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Nyks",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(5),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/aether.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Aither",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(6),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/uranus.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Uranos",
                          style: ktextstyle,
                        ),
                      ),
                      Image(image: AssetImage("images/Greek/pontus.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Pontus",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(7),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/cyclops.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Kyklop",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(8),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/hekatron.webp")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Hekatonkheir",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(9),
                        style: kTextstyle,
                      ),
                      Image(
                          image:
                              AssetImage("images/Greek/cornos and uranos.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Uranos ve Kronos",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(10),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/erinyes.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Erinys",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(11),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/aprodite.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Aphrodite",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(12),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/moria.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Moira",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(13),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/harpy.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Harpy",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(14),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/gorgon.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Gorgolar",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(15),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/hereke.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Ekhidna",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(16),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/Helios.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Helios",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(17),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/kronos.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Kronos ve çocuğu",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(18),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/zeus.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Zeus",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(19),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/typhon.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Typhon",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(20),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/olimpus.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Olympos",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(21),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/metis.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Metis",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(22),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/kharit.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Kharit",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(23),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/atres.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Hephaistos, Aphrodite ve Ares",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(24),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/athena.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Athena",
                          style: ktextstyle,
                        ),
                      ),
                      Text(
                        liste.greekinfo(25),
                        style: kTextstyle,
                      ),
                      Image(image: AssetImage("images/Greek/t3.jpg")),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Gigantomakhia",
                          style: ktextstyle,
                        ),
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
                  ),
                ))));
  }
}
