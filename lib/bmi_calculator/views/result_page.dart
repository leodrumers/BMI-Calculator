import 'package:bmi_calculator/bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/utilities/string_constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  const ResultPage({
    Key key,
    @required this.bmi,
    @required this.result,
    @required this.interpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kBMIApp),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Your result',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CalculateButton(
              text: 'Re-Calculate',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
