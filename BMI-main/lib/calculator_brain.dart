import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final height;
  final weight;
  double _bmi;
  String CaclculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else
      return "Underweight";
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "your weight too much you should eat less";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else
      return "your weight too less you should eat more";
  }
}
