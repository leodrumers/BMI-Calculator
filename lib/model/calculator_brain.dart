import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  int height;
  int weight;
  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getIndicator() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You need a doctor. Urgently!';
    } else if (_bmi >= 25) {
      return 'Your have a higher than normal body weight. Try to exercise more ';
    } else if (_bmi > 18) {
      return 'You have a normal weight. Good job!';
    } else {
      return 'Your have a lower than normal body weight. Try to eat a beat more';
    }
  }
}
