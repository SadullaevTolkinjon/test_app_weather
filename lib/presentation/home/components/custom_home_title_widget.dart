import 'package:flutter/material.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class CustomHomeTitle extends StatelessWidget {
  const CustomHomeTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: AppSizes.getH(context, 0.018),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
