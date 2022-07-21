import 'package:flutter/material.dart';

const kTempTextStyle =
    TextStyle(fontFamily: 'Dosis', fontSize: 70.0, fontWeight: FontWeight.bold);

const kMessageTextStyle =
    TextStyle(fontFamily: 'Dosis', fontSize: 45.0, fontWeight: FontWeight.bold);

const kButtonTextStyle =
    TextStyle(fontSize: 40.0, fontFamily: 'Dosis', fontWeight: FontWeight.bold);

const kConditionTextStyle =
    TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);

const boxdecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(
      Icons.location_city,
      color: Colors.blueGrey,
    ),
    hintText: "Enter The City Name",
    hintStyle: TextStyle(
      color: Colors.blueGrey,
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))));
