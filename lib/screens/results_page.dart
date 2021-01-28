import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultsPageArguments args = ModalRoute.of(context).settings.arguments;
    final bmiResult = args.bmiResult;
    final resultText = args.resultText;
    final interpretation = args.interpretation;
    final isNormal = args.isNormal;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: isNormal
                        ? kNormalResultsTextStyle
                        : kAlertResultsTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

class ResultsPageArguments {
  ResultsPageArguments({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
    @required this.isNormal,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final bool isNormal;
}
