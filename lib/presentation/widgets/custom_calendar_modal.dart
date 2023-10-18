import 'package:flutter/widgets.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/presentation/widgets/custom_linear_btn.dart';
import 'package:test_/presentation/widgets/my_padding.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class CustomCalendarModal extends StatelessWidget {
  const CustomCalendarModal({
    super.key,
    required this.calendarWidget,
    required this.backPress,
    required this.savePress,
    required this.value,
    this.horizontal,
     this.vertical,
  });
  final Widget calendarWidget;
  final Function savePress;
  final Function backPress;
  final String value;
  final double? vertical;
  final double? horizontal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: vertical ?? 14, horizontal: horizontal ?? 12),
      child: Column(
        children: [
          calendarWidget,
          const Spacer(),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: CustomLinearBtn(
                  txt: "Bekor qilish",
                  width: double.infinity,
                  txtColor: ColorConstants.black,
                  linearColor: [
                    ColorConstants.grey100,
                    ColorConstants.grey,
                  ],
                  height: AppSizes.getH(context, 0.046),
                  ontap: () {
                    backPress();
                  },
                ),
              ),
              const MyPadding(
                width: 10.0,
              ),
              Expanded(
                flex: 5,
                child: CustomLinearBtn(
                  ontap: () {
                    savePress();
                  },
                  txt: "Ko'rsatish",
                  width: double.infinity,
                  height: 46.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
