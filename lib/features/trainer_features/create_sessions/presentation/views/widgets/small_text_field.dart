import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';

class SmallTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged; // Add onChanged callback

  const SmallTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.onChanged, // Initialize the parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6.r)),
        color: AppColors.background,
      ),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        cursorColor: AppColors.primaryColor,
        style: TextStyles.textStyleRegular.copyWith(
          color: AppColors.n900Black,
          fontSize: 14.sp,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8.h),
          hintText: hintText,
          hintStyle: TextStyles.textStyleMedium.copyWith(
            color: AppColors.n200Gray,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.dg)),
            borderSide: const BorderSide(
              color: AppColors.n40Gray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.dg)),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.dg)),
            borderSide: const BorderSide(
              color: AppColors.n30StrokeColor,
            ),
          ),
        ),
        onChanged: onChanged, // Pass onChanged callback to TextFormField
      ),
    );
  }
}
