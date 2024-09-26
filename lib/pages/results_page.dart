import 'package:bmi_calculator_app/components/bottom_container_button.dart';
import 'package:bmi_calculator_app/components/constants.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretationText,
  });
  final String bmiResult;
  final String resultText;
  final String interpretationText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result!",
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiResultValue,
                  ),
                  Text(
                    interpretationText,
                    textAlign: TextAlign.center,
                    style: kBmiResultlabel,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomContainerButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: "DONE",
          ))
        ],
      ),
    );
  }
}
