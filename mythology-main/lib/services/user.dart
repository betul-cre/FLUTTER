import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:path/path.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/signin.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User> Sign(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  signOut() async {
    return await _auth.signOut();
  }
}

class nameValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Lütfen alanı doldurun";
    }
    if (value.length < 2) {
      return "Kullanıcı adı 2 karakterden az olamaz";
    }
    return null;
  }
}

class emailValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Lütfen alanı doldurun";
    }
    if (value.isEmpty) {
      return "Lütfen geçerli bir e-posta adresi girin";
    }

    return null;
  }
}

class emailsignValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Lütfen alanı doldurun";
    }

    return "Bu hesap çoktan kullanılıyor";
  }
}

class passwordasignValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Lütfen alanı doldurun";
    }
    if (value.length < 6) {
      return "parola 6 karakterden az olamaz";
    }
    return null;
  }
}

class passwordValidator {
  static String validate(
    String value,
  ) {
    if (value.isEmpty) {
      return "Lütfen alanı doldurun";
    }
    if (value.length < 6) {
      return "parola 6 karakterden az olamaz";
    }
    return null;
  }
}
