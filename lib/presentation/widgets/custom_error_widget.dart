import 'package:flutter/material.dart';
import 'package:test_/presentation/widgets/my_padding.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key,required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Failed...."),
          MyPadding(
            hieght: AppSizes.getH(context, 0.04),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.getH(context, 0.02),
            ),
            child: ElevatedButton(
                onPressed: () {
                  ontap();
                },
                child: const Text("Reload"),
               ),
          )
        ],
      ),
    );
  }
}
