import 'package:flash_chat/paddings.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = "welcomeScreen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation animatione;

  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    animatione = ColorTween(begin: Colors.yellowAccent, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animatione.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset(
                      'images/logo.png',
                    ),
                    height: animation.value * 100,
                  ),
                ),
                ColorizeAnimatedTextKit(
                  text: ["Flash Chat"],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  colors: [
                    Colors.black87,
                    Colors.white,
                    Colors.black54,
                    Colors.black12,
                    Colors.yellow.shade200,
                    Colors.yellow.shade300,
                    Colors.yellowAccent,
                    Colors.yellowAccent.shade400,
                    Colors.yellowAccent.shade700,
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            paddingstuff(
              color: Colors.lightBlueAccent,
              onpress: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              text: "Log In",
            ),
            paddingstuff(
              color: Colors.blueAccent,
              onpress: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              text: "Register",
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
