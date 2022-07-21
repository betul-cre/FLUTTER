import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPagex extends StatelessWidget {
  ResultsPagex({@required this.bmiResult, this.interpetation, this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpetation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your result",
                style: titleTextstyle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTitlestyle,
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextstyle,
                    ),
                    Text(
                      interpetation,
                      style: labTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return BMICalculator();
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: endTextstyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: bottomContainerHeight,
              ),
            )
          ],
        ));
  }
}
