import 'package:flutter/material.dart';
import 'constants.dart';
import 'components/cardfor_app.dart';
import 'components/bottombutton.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  @override
  ResultPage(
      {required this.resultbmi,
      required this.resultText,
      required this.feedback});

  final String resultbmi;
  final String resultText;
  final String feedback;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text('Your Results', style: kTitleStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardForApp(
              colour: kinactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kresultTextStyle),
                  Text(resultbmi, style: kresultValueTextStyle),
                  Text(feedback,
                      textAlign: TextAlign.center, style: kextraText),
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
