import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        cursorColor: AppColors.primaryColor,
        style: TextStyles.textStyleRegular
            .copyWith(color: AppColors.n900Black, fontSize: 14.sp),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.n20Gray,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            hintText: 'Search',
            hintStyle: TextStyles.textStyleRegular.copyWith(fontSize: 16.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.dg),
              borderSide: const BorderSide(
                color: AppColors.n30StrokeColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.dg),
              borderSide: const BorderSide(
                color: AppColors.n30StrokeColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.dg),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
              ),
            ),
            errorMaxLines: 1,
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 12.0.w, right: 5.w),
              child: SvgPicture.asset('assets/image/Icon/search.svg'),
            ),
            prefixIconConstraints:
                BoxConstraints(minWidth: 20.w, minHeight: 20.h)),
      ),
    );
  }
}
