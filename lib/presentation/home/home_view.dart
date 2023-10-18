import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/constants/icons/icon_const.dart';
import 'package:test_/di/injection.dart';
import 'package:test_/domain/repository/main_repository.dart';
import 'package:test_/presentation/home/components/check_user_agreement.dart';
import 'package:test_/presentation/home/components/custom_home_title_widget.dart';
import 'package:test_/presentation/home/components/select_date_widget.dart';
import 'package:test_/presentation/home/components/select_image_widget.dart';
import 'package:test_/presentation/home/components/text_form_field.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/presentation/widgets/elevated_widget_btn.dart';
import 'package:test_/presentation/widgets/my_padding.dart';
import 'package:test_/presentation/widgets/show_snacbar.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController =
      TextEditingController(text: "+7");
  final TextEditingController _dateOfBirthController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {},
      child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [
          buildable.obsecure,
          buildable.imagePath,
          buildable.is_date_failed,
          buildable.is_image_failed,
          buildable.is_privacy_failed,
          buildable.checkboxVal,
          buildable.time
        ],
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.getH(context, 0.015),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPadding(AppSizes.getH(context, 0.01)),
                      const CustomHomeTitle(title: "Please enter full name"),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      CustomTextFormfield(
                        controller: _textController,
                        validator: (v) {
                          return locator<MainRepository>().validator(v!);
                        },
                        keyboardType: TextInputType.text,
                        hintText: "Full name",
                      ),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      const CustomHomeTitle(title: "Please enter passaword"),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      CustomTextFormfield(
                        controller: _passwordController,
                        validator: (v) {
                          return locator<MainRepository>().validator(v!);
                        },
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
                      const CustomHomeTitle(title: "Please enter phone number"),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      CustomTextFormfield(
                        controller: _phoneController,
                        validator: (v) {
                          return locator<MainRepository>().validator(v!);
                        },
                        keyboardType: TextInputType.phone,
                        hintText: "Phone number",
                      ),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      const CustomHomeTitle(
                          title: "Please select date of your brith"),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      SelectDateWidget(
                        controller: _dateOfBirthController,
                  
                      ),
                      _buildPadding(
                        AppSizes.getH(context, 0.014),
                      ),
                      const CustomHomeTitle(title: "Please select image"),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      const SelectImageWidget(),
                      _buildPadding(AppSizes.getH(context, 0.014)),
                      const CheckUserAgreementWidget(
                        validate: true,
                      ),
                      // const Spacer(),
                      _buildPadding(AppSizes.getH(context, 0.024)),
                      ElevatedBtnWidget(
                        ontap: () {
                          if (_formKey.currentState!.validate()) {
                            if (state.checkboxVal == false) {
                              validate(
                                state.imagePath == null ? false : true,
                                state.checkboxVal,
                                state.time == null ? false : true,
                              );
                            }
                          }
                        },
                        height: AppSizes.getH(context, 0.05),
                        width: double.infinity,
                        color: ColorConstants.darkBlue,
                        title: "Check",
                      ),
                      _buildPadding(
                        AppSizes.getH(context, 0.01),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  validate(bool imagePath, bool checkboxVal, bool time) {
    if (time == false) {
      return showSnacbar(context, 'You must choose date of your birth.');
    }
    if (imagePath == false) {
      return showSnacbar(context, 'You must select image.');
    } if (checkboxVal == false) {
      return showSnacbar(context, 'You must accept the terms and conditions.');
    } 
  }

  _buildPadding(double size) {
    return MyPadding(
      hieght: size,
    );
  }
}
