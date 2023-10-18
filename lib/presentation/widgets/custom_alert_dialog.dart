import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_/constants/color/color_const.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {super.key, required this.content, required this.contentHeight});
  final Widget content;
  final double contentHeight;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.center,
      backgroundColor: ColorConstants.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    
      content: SizedBox(
        height: contentHeight,
        width: MediaQuery.of(context).size.width,
        child: content,
      ),
    );
  }
}
