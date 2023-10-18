import 'package:flutter/material.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class PopupMenuContent extends StatelessWidget {
  const PopupMenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.getH(context, 0.15),
      child: const Row(
        children: [
          Text(
            "Select city",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Spacer(),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
