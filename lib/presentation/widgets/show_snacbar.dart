import 'package:flutter/material.dart';

showSnacbar(BuildContext context, String title) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(title),
    ),
  );
}
