import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/di/injection.dart';
import 'package:test_/domain/repository/main_repository.dart';
import 'package:test_/presentation/home/components/text_form_field.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/presentation/widgets/custom_alert_dialog.dart';
import 'package:test_/presentation/widgets/custom_calendar_modal.dart';
import 'package:test_/presentation/widgets/table_calendar_widget.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class SelectDateWidget extends StatelessWidget {
  const SelectDateWidget({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [buildable.time],
        builder: (context, state) {
          return GestureDetector(
            onTap: () async {
              var time = await showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => CustomAlertDialog(
                  content: BlocProvider(
                    create: (context) {
                      var cubit = locator<HomeCubit>();
                      cubit.initCalendar(state.time ?? DateTime.now());
                      return cubit;
                    },
                    child: BlocListener<HomeCubit, HomeState>(
                      listener: (context, state) {},
                      child:
                          Buildable<HomeCubit, HomeState, HomeBuildableState>(
                        properties: (buildable) => [buildable.time],
                        builder: (context, state) {
                          return CustomCalendarModal(
                              calendarWidget: TableCalendarWidget(
                                onDaySelected: (day1, day2) {
                                  BlocProvider.of<HomeCubit>(context)
                                      .initCalendar(day1);
                                },
                                onRangeSelected: (v, v2, v3) {},
                                focusedDay: state.time ?? DateTime.now(),
                              ),
                              backPress: () {
                                Navigator.pop(context);
                              },
                              savePress: () {
                                Navigator.pop(context, state.time);
                              },
                              value: "");
                        },
                      ),
                    ),
                  ),
                  contentHeight: AppSizes.getH(context, 0.55),
                ),
              );
              context.read<HomeCubit>().initCalendar(time);

              controller.text = time!.toLocal().toString().split(" ").first;
            },
            child: CustomTextFormfield(
              controller: controller,
              enable: false,
              validator: (v) {
               
              },
              hintText: "Date of brith",
            ),
          );
        });
  }
}
