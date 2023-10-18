import 'package:flutter/material.dart';
import 'package:test_/constants/color/color_const.dart';

class CustomLinearBtn extends StatelessWidget {
  const CustomLinearBtn({
    super.key,
    required this.ontap,
    required this.txt,
    required this.width,
    required this.height,
    this.linearColor,
    this.txtColor,
  });
  final String txt;
  final Function ontap;
  final double height;
  final double width;
  final List<Color>? linearColor;
  final Color? txtColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          gradient: LinearGradient(
            colors: linearColor ??
                [
                  ColorConstants.linearGradientBlue1,
                  ColorConstants.linearGradientBlue2
                ],
          ),
        ),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color:txtColor?? ColorConstants.white,
          ),
        ),
      ),
    );
  }
}
