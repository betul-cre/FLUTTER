import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_contante.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'flatbutton.dart';
import 'results_page.dart';
import 'calculator_brain.dart';

enum Gender {
  female,
  male,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardcolor = inactivecardColor;
  Color femaleCardcolor = inactivecardColor;

  void colorUpdate(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardcolor == inactivecardColor) {
        maleCardcolor = activecardColor;
        femaleCardcolor = inactivecardColor;
      } else {
        maleCardcolor = inactivecardColor;
      }
    } else if (gender == Gender.female) {
      if (femaleCardcolor == inactivecardColor) {
        femaleCardcolor = activecardColor;
        maleCardcolor = inactivecardColor;
      } else {
        femaleCardcolor = inactivecardColor;
      }
    }
  }

  int height = 180;
  int weight = 100;
  int age = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          colorUpdate(Gender.male);
                        });
                      },
                      colour: maleCardcolor,
                      cardChild: ReusableColumn(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          colorUpdate(Gender.female);
                        });
                      },
                      colour: femaleCardcolor,
                      cardChild: ReusableColumn(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: inactivecardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEİGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(height.toString(), style: numberTextstyle),
                        Text(
                          "cm",
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 13,
                          ),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 27)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: inactivecardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEİGHT",
                            style: labelTextStyle,
                          ),
                          Text(weight.toString(), style: numberTextstyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flatbutton(
                                onpresse: () {
                                  setState(() {
                                    if (weight > 1) {
                                      weight--;
                                    }
                                  });
                                },
                                icone: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flatbutton(
                                onpresse: () {
                                  setState(() {
                                    if (weight < 150) {
                                      weight++;
                                    }
                                  });
                                },
                                icone: FontAwesomeIcons.plus,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: labelTextStyle,
                          ),
                          Text(age.toString(), style: numberTextstyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flatbutton(
                                onpresse: () {
                                  setState(() {
                                    if (age > 1) {
                                      age--;
                                    }
                                  });
                                },
                                icone: FontAwesomeIcons.minus,
                              ),
                              SizedBox(width: 15),
                              Flatbutton(
                                onpresse: () {
                                  setState(() {
                                    if (age < 100) {
                                      age++;
                                    }
                                  });
                                },
                                icone: FontAwesomeIcons.plus,
                              )
                            ],
                          )
                        ],
                      ),
                      colour: inactivecardColor,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);
                  return ResultsPagex(
                    bmiResult: calc.CaclculateBmi(),
                    resultText: calc.getResult(),
                    interpetation: calc.getInterpretation(),
                  );
                }));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: endTextstyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: bottomContainerHeight,
              ),
            ),
          ],
        ));
  }
}
