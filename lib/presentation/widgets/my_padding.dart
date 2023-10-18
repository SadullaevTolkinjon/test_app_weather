import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({super.key, this.hieght, this.width});
  final double? hieght;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght ?? 0,
      width: width ?? 0,
    );
  }
}
