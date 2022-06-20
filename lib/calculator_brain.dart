// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';

class Calculatorbrain {
  Calculatorbrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double bmi = 0;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else {
      if (bmi >= 18.5) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    }
  }

  String getinterpretation() {
    if (bmi >= 25) {
      return 'You have a higher normal body weight.Try to exercise more. 👎';
    } else if (bmi >= 18.5) {
      return 'You have a Normal body weight. Good job 👍 💪🏼';
    } else {
      return 'You have a normal body weight. You can eat a bit more. ❤️';
    }
  }
}
