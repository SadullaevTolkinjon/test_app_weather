
import 'package:flutter/material.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class ElevatedBtnWidget extends StatelessWidget {
  const ElevatedBtnWidget(
      {super.key,
      required this.ontap,
      required this.height,
      required this.width,
      required this.color,
      required this.title,
      this.widget,
      this.titleColor});
  final Function ontap;
  final double height;
  final double width;
  final Color color;
  final String title;
  final Color? titleColor;
  final Widget? widget;
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
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: widget,
                  )
                : const SizedBox(),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.getH(context, 0.018),
                color: titleColor ?? ColorConstants.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
