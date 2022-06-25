import 'dart:math';
import 'package:flutter/material.dart';

class Calculate_BMI {
  Calculate_BMI({required this.height, required this.weight});
  final int height;
  final int weight;

  double bmi = 0.0;

  String result() {
    bmi = weight / (pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (bmi >= 25)
      return 'Overweight';
    else if (bmi < 18.5)
      return 'Underweight';
    else
      return 'Normal';
  }

  String feedBack() {
    if (bmi >= 25)
      return 'Your BMI is high.Control your diet and eat more consiously';
    else if (bmi < 18.5)
      return 'Your BMI is low.Eat more and improve your diet';
    else
      return 'Your BMI is good!Keep it up';
  }
}
