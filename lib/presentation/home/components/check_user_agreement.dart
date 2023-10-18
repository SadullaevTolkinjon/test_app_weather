import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class CheckUserAgreementWidget extends StatelessWidget {
  const CheckUserAgreementWidget({super.key, required this.validate});
  final bool validate;
  @override
  Widget build(BuildContext context) {
    return Buildable<HomeCubit, HomeState, HomeBuildableState>(
      properties: (buildable) => [buildable.checkboxVal],
      builder: (context, state) {
        return Container(
          height: AppSizes.getH(context, 0.06),
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(
              color: validate ? ColorConstants.white : ColorConstants.kRed,
            ),
          ),
          padding:
              EdgeInsets.symmetric(horizontal: AppSizes.getH(context, 0.01)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Do you agree all Privacy policy"),
              Checkbox.adaptive(
                  value: state.checkboxVal,
                  onChanged: (v) {
                    context.read<HomeCubit>().selectUserAgreement(v!);
                  })
            ],
          ),
        );
      },
    );
  }
}
