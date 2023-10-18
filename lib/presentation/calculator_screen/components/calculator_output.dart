import 'package:flutter/material.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class CalculatorOutput extends StatelessWidget {
  const CalculatorOutput({super.key, required this.output});
  final String output;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.getH(context, 0.024),
        horizontal: AppSizes.getH(context, 0.012),
      ),
      child: Text(
        output,
        style: TextStyle(
          fontSize: AppSizes.getH(context, 0.050),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
