import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Gemuk';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Kurus';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Anda memiliki berat badan yang lebih tinggi dari normal, cobalh untuk lebih banyak berolahraga';
    } else if (_bmi > 18.5) {
      return 'Anda memiliki berat badan normal. Mantap';
    } else {
      return 'Anda memiliki berat badan yang lebih rendah dari normal, cobalah untuk lebih menjaga pola hidup sehat';
    }
  }
}
