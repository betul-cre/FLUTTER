import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'const.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/treethree.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    height: 500,
                    width: 500,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 100,
                          ),
                          child: FadeAnimatedTextKit(
                            text: [
                              "Lei Gong",
                              "Guan Yu",
                              "Zhao Gongming",
                              "Bi Gan",
                              "Bi Fang",
                              "Kui Xing"
                            ],
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: RotateAnimatedTextKit(
                            text: [
                              "Odin",
                              "Thor",
                              "Loki",
                              "Balder",
                              "Freya",
                              "Frigg",
                              "Hel",
                              "Vale"
                            ],
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 200,
                          ),
                          child: FadeAnimatedTextKit(
                            text: [
                              "Orotalt",
                              "Alilat",
                              "el-Lat",
                              "el-Uzza",
                              "el-Menat",
                              "Baalshamin",
                              "Malakbel",
                              "Agribol",
                              "Vedd",
                              "Nekruh"
                            ],
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF00939A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 100,
                          ),
                          child: ScaleAnimatedTextKit(
                            text: [
                              "Kayra Han",
                              "Ülgen",
                              "Ak Ana",
                              "Erlik",
                              "Mergen",
                              "Kızagan",
                              "Umay Ana",
                              "Yayık Han",
                              "Karlık"
                            ],
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF006E7A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 200,
                          ),
                          child: FadeAnimatedTextKit(
                            text: [
                              "Zeus",
                              "Poseidon",
                              "Hephaistos",
                              "Ares",
                              "Apollon",
                              "Hades",
                              "Hermes",
                              "Dionisos",
                              "Artemis",
                              "Eros",
                              "Uranus"
                            ],
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 200,
                          ),
                          child: FadeAnimatedTextKit(
                            text: [
                              "An",
                              "Enlil",
                              "Enki",
                              "Nihursag",
                              "Nanna-Sin",
                              "Utu",
                              "İnanna",
                              "Annunaki"
                            ],
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF00939A)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),
                          child: RotateAnimatedTextKit(
                            text: [
                              "Amaterasu",
                              "Uzume",
                              "Fujin",
                              "Hachiman",
                              "Inari",
                              "Ninigi",
                              "Omoikane",
                              "Rajin"
                            ],
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 300,
                          ),
                          child: ScaleAnimatedTextKit(
                            text: [
                              "Brahma",
                              "Vishnu",
                              "Shiva",
                              "Ganeşa",
                              "Hanuman",
                              "İndra",
                              "Surya",
                              "Ganeşa"
                            ],
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 200,
                          ),
                          child: RotateAnimatedTextKit(
                            text: [
                              "Ceres",
                              "Diana",
                              "Merkür",
                              "Cupid",
                              "Janus",
                              "Jupiter",
                              "Minerva",
                              "Plüton",
                              "Neptün"
                            ],
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),
                          child: FadeAnimatedTextKit(
                            text: [
                              "Aker",
                              "Amun",
                              "Aten",
                              "Anuket",
                              "Bennu",
                              "Mihos",
                              "Nefertum",
                              "Ra",
                              "Shu"
                            ],
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF01767F)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 410,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      repeatForever: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Ve bir gün, artık bu dünyaya dayanamayacağım diye düşündüm.Bunun üzerine denizin derinliklerindeki kadim bir tanrı seslendi: 'Öyleyse çocuğum başka bir dünya yap!'",
                          textStyle: ktitlestyle,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 35,
                    endIndent: 35,
                    height: 5,
                    thickness: 2,
                  ),
                  FlatButton(
                      minWidth: 200,
                      height: 45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "Giriş Yap",
                        style: kwelcome,
                      ),
                      color: Colors.black26,
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      }),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hesabınız Yok Mu?",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Smythe",
                            color: Color(0xFF004949)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "signin");
                          },
                          child: Text(
                            "Kayıt Ol",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFF01767F),
                                fontFamily: "Smythe"),
                          ))
                    ],
                  )
                ]))));
  }
}
