import 'package:flutter/material.dart';

class CardForApp extends StatelessWidget {
  @override
  CardForApp({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
