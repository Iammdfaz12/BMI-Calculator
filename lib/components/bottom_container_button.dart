import 'package:bmi_calculator_app/components/constants.dart';
import 'package:flutter/material.dart';

class BottomContainerButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const BottomContainerButton(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: kLargeContainterButton,
          ),
        ),
      ),
    );
  }
}
