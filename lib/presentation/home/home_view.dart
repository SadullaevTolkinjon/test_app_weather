import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_/constants/icons/icon_const.dart';
import 'package:test_/presentation/home/components/custom_home_title_widget.dart';
import 'package:test_/presentation/home/components/select_image_widget.dart';
import 'package:test_/presentation/home/components/text_form_field.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/presentation/widgets/custom_alert_dialog.dart';
import 'package:test_/presentation/widgets/custom_calendar_modal.dart';
import 'package:test_/presentation/widgets/my_padding.dart';
import 'package:test_/presentation/widgets/table_calendar_widget.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {},
      child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [
          buildable.obsecure,
          buildable.imagePath,
        ],
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.getH(context, 0.015),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPadding(AppSizes.getH(context, 0.01)),
                  const CustomHomeTitle(title: "Please enter full name"),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  CustomTextFormfield(
                    controller: _textController,
                    validator: (v) {},
                    keyboardType: TextInputType.text,
                    hintText: "Full name",
                  ),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  const CustomHomeTitle(title: "Please enter passaword"),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  CustomTextFormfield(
                    controller: _passwordController,
                    validator: (v) {},
                    hintText: "Password",
                    obsecure: state.obsecure,
                    suffix: GestureDetector(
                      onTap: () {
                        BlocProvider.of<HomeCubit>(context)
                            .changeObsecure(!state.obsecure);
                      },
                      child: state.obsecure == true
                          ? SvgPicture.asset(IconConstants.eye_off)
                          : SvgPicture.asset(IconConstants.eye_on),
                    ),
                  ),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  const CustomHomeTitle(
                      title: "Please select date of your brith"),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => CustomAlertDialog(
                          content: CustomCalendarModal(
                              calendarWidget: TableCalendarWidget(
                                onDaySelected: (day1, day2) {},
                                onRangeSelected: (v, v2, v3) {},
                                focusedDay: DateTime.now(),
                              ),
                              backPress: () {
                                Navigator.pop(context);
                              },
                              savePress: () {},
                              value: "here"),
                          contentHeight: AppSizes.getH(context, 0.55),
                        ),
                      );
                    },
                    child: CustomTextFormfield(
                      controller: _dateOfBirthController,
                      enable: false,
                      validator: (v) {},
                      hintText: "Date of brith",
                    ),
                  ),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  const CustomHomeTitle(title: "Please select image"),
                  _buildPadding(AppSizes.getH(context, 0.014)),
                  SelectImageWidget(
                   
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _buildPadding(double size) {
    return MyPadding(
      hieght: size,
    );
  }
}
