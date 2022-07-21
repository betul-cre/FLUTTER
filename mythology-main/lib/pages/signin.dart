import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled1/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'const.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _passwordcontrolleragain =
      TextEditingController();
  final _formkey = GlobalKey<FormState>();
  AuthService _authService = AuthService();
  bool select = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/treethree.jpg"), fit: BoxFit.fill),
        ),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kayıt Ol",
                style: TextStyle(
                  fontFamily: "Smythe",
                  fontSize: 35,
                  color: Color(0xFF022020),
                ),
              ),
              Divider(
                indent: 35,
                endIndent: 35,
                height: 5,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.only(right: 16, left: 16, top: 35),
                child: TextFormField(
                    style: klogin,
                    validator: nameValidator.validate,
                    controller: _namecontroller,
                    onChanged: (value) {},
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorStyle:
                          TextStyle(color: Color(0xFF592B1D), fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: Icon(Icons.person),
                      hintText: "Kullanıcı Adı",
                      hintStyle: klogin,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF004949), width: 3),
                          borderRadius: BorderRadius.circular(25)),
                    )),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 16, left: 16, top: 11),
                  child: TextFormField(
                    style: klogin,
                    keyboardType: TextInputType.emailAddress,
                    validator: emailsignValidator.validate,
                    controller: _emailcontroller,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      errorStyle:
                          TextStyle(color: Color(0xFF592B1D), fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: Icon(Icons.email),
                      hintText: "E-Mail",
                      hintStyle: klogin,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF004949), width: 3),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 16, left: 16, top: 11),
                  child: TextFormField(
                    style: klogin,
                    validator: passwordasignValidator.validate,
                    controller: _passwordcontroller,
                    onChanged: (value) {},
                    obscureText: select,
                    decoration: InputDecoration(
                      errorStyle:
                          TextStyle(color: Color(0xFF592B1D), fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: Icon(Icons.vpn_key),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            select = !select;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "Parola",
                      hintStyle: klogin,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF004949), width: 3),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 16, left: 16, top: 11),
                  child: TextFormField(
                    style: klogin,
                    validator: passwordValidator.validate,
                    controller: _passwordcontrolleragain,
                    onChanged: (value) {},
                    obscureText: select,
                    decoration: InputDecoration(
                      errorStyle:
                          TextStyle(color: Color(0xFF592B1D), fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: Icon(Icons.vpn_key),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            select = !select;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: "Parola Tekrar",
                      hintStyle: klogin,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF004949), width: 3),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: FlatButton(
                  child: Text(
                    "Kayıt Ol",
                    style: kwelcome,
                  ),
                  color: Colors.black26,
                  onPressed: () {
                    if (_formkey.currentState.validate()) {}

                    Createuser(
                      _namecontroller.text,
                      _emailcontroller.text,
                      _passwordcontroller.text,
                    );
                  },
                  minWidth: 170,
                  height: 45,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_backspace,
                        color: Colors.black45,
                        size: 50,
                      ))),
            ],
          ),
        ),
      )),
    );
  }

  Future<User> Createuser(
    String username,
    String email,
    String password,
  ) async {
    try {
      var user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Navigator.pushNamed(context, "login");

      await _firestore
          .collection("Person")
          .doc(user.user.uid)
          .set({"username": username, "mail": email, "password": password});
      return user.user;
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(
          msg: error.message,
          textColor: Color(0xFF004949),
          backgroundColor: Colors.black26,
          fontSize: 20,
          gravity: ToastGravity.TOP);
    }
  }
}
