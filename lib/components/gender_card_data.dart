import 'package:bmi_calculator_app/components/constants.dart';
import 'package:flutter/material.dart';

class GenderCardData extends StatelessWidget {
  final String label;
  final IconData icon;
  const GenderCardData({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
