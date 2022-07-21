import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/pages/const.dart';
import 'listinfo.dart';

class Norsee extends StatelessWidget {
  Liste liste = Liste();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      padding: EdgeInsets.only(top: 25, left: 15),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Norse/norse.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage("images/Norse/ginnugap.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Ginnungagap",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(0),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/nilf.png")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Niflheim",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(1),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/musphel.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Muspell",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(2),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/ymir.png")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Ymir",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(3),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/audhumbla.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Audhumla ve Buri",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(4),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/midgard.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Midgard",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(5),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/ask.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Askr ve Embla",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(6),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/ninewworld.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Asgard ve Ygdrassil ",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(7),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/aesir.png")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Aesir ve Vanir savaşı ",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(8),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/odin.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Odin",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(9),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/thor.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Thor",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(10),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/gulveg.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Gullveig",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(11),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/Kvasir.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Kvasir",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(12),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/glitnir.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Glitnir ve Balder",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(13),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/the death.jpeg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Balder'in Ölümü",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(14),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/Valhalla.webp")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Valhalla",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(15),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/loki.jpg")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Loki'nin Cezalandırılması",
                style: klogin,
              ),
            ),
            Text(
              liste.getinfo(16),
              style: kTextstyle,
            ),
            Image(image: AssetImage("images/Norse/ragnarok.png")),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Ragnarok",
                style: klogin,
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
      ),
    )));
  }
}
