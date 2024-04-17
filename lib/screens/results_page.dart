import 'package:bmi_calculator_app/constatnts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/reusable_card.dart';
import 'package:bmi_calculator_app/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  ResultsPage({@required this.interpretation, @required this.bmiResult, @required this.resultText });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D101F),
        title: Center(
          child: Text('BMI CALCULATOR',
          style: TextStyle(color: Colors.white),),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation!,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ), onPress: () {  },
            ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              }, 
              buttonTitle: 'RE-CALCULATE'
          )
        ],
      )
    );
  }
}
