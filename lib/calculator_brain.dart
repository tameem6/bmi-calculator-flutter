import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  int height;
  int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'Overweight';
    } else if( _bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'Your BMI is high. Control your diet';
    } else if( _bmi > 18.5) {
      return 'Your BMI is normal. Proceed as you are.';
    } else {
      return 'Your BMI is quite low. You should eat more.';
    }
  }
}