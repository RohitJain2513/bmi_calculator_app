import 'package:flutter/material.dart';
import 'constatnts.dart';

class BottomButton extends StatelessWidget {

  final Function()? onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        // padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}