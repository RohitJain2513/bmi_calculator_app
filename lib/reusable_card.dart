import 'package:bmi_calculator_app/screens/input_page.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ReusableCard([this.colour = const Color(0xFF1D1E33), this.cardChild, this.onPress]);
  final Color colour;
  final Widget cardChild;
  final Function()? onPress;

  ReusableCard({super.key, required this.colour, required this.cardChild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}