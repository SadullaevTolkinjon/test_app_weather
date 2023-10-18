import 'package:flutter/material.dart';

class AppSizes {
  static double getH(BuildContext context, double size) {
    return MediaQuery.of(context).size.height * size;
  }

  static double getW(BuildContext context, double size) {
    return MediaQuery.of(context).size.width * size;
  }
}
