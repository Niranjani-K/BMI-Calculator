import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class BottomButton extends StatelessWidget {
  @override
  BottomButton({required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(text, style: kBottomTitleStyle),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}
