import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D1E33),
        scaffoldBackgroundColor: Color(0xFF9DB2B1),
        textTheme: TextTheme(body1: TextStyle(color: Colors.amber)),
        appBarTheme: AppBarTheme(
            textTheme:
                TextTheme(title: TextStyle(color: Colors.white, fontSize: 25))),
      ),
      home: InputPage(),
    );
  }
}
