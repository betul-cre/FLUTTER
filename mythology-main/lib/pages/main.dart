import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/pages/greek.dart';
import 'home.dart';
import 'package:untitled1/pages/norse.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/romen.dart';
import 'package:untitled1/pages/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "welcome",
      routes: {
        "login": (context) => Login(),
        "signin": (context) => Signin(),
        "home": (context) => Home(),
        "norse": (context) => Norsee(),
        "greek": (context) => Greeke(),
        "romen": (context) => Romen(),
        "welcome": (context) => Welcome(),
      },
    );
  }
}
