import 'package:flutter/material.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/utils/app_size/app_size_const.dart';


class CustomTextFormfield extends StatelessWidget {
  CustomTextFormfield({
    super.key,
    required this.validator,
    required this.controller,
    required this.hintText,
   
    this.heleperTextColor,
    this.obsecure,this.suffix, this.keyboardType,this.enable
  });
  final Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  Color? heleperTextColor;
  final bool? obsecure;
 final Widget? suffix;
 final TextInputType? keyboardType;
 final bool? enable;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorConstants.grey,
      keyboardType: keyboardType,
      controller: controller,
      enabled: enable??true,
      onChanged: (v) {},
      validator: (v) {
        return validator!(v);
      },
      obscureText: obsecure??false,
      decoration: InputDecoration(
        //  contentPadding: EdgeInsets.only(),
        filled: true,
        hoverColor: ColorConstants.blue,
        focusColor: ColorConstants.grey,
        fillColor: ColorConstants.grey,
        hintText: hintText,
        suffix: suffix,
        hintStyle: TextStyle(
            fontSize: AppSizes.getH(context, 0.017),
            fontWeight: FontWeight.w600,
            color: ColorConstants.black.withOpacity(0.2)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.grey),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
