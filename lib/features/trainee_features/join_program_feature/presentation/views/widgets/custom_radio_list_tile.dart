import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';

class CustomRadioListTile extends StatelessWidget {
  final String value;
  final String groupValue;
  final String title;
  final Widget icon;
  final ValueChanged<String?> onChanged;
  final bool isTextButton;

  const CustomRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    required this.icon,
    this.isTextButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: AppColors.n20FillBodyInBigCardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          height: 50.h,
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: TextStyles.textStyleSemiBold.copyWith(
                      fontSize: 14,
                      color: AppColors.n100Gray,
                    ),
                  ),
                ],
              ),
              isTextButton
                  ? GestureDetector(
                      onTap: () {
                        debugPrint('pressed');
                      },
                      child: Text(
                        'Change',
                        style: TextStyles.textStyleRegular.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    )
                  : buildRadioButton(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildRadioButton() {
    return Container(
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:
              value == groupValue ? AppColors.primaryColor : AppColors.n40Gray,
          width: 1.0,
        ),
      ),
      child: Center(
        child: value == groupValue
            ? Container(
                width: 11.0,
                height: 11.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
              )
            : null,
      ),
    );
  }
}
