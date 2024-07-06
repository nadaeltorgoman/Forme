import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/widgets/button_container.dart';

import '../../../../../../../core/widgets/simple_app_bar.dart';
import '../../../../../../trainee_features/profile/presentation/views/widgets/search_text_field.dart';
import '../../../../../create_sessions/presentation/views/widgets/select_package.dart';

class LanguagesSearchScreen extends StatelessWidget {
  const LanguagesSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context, 'Languages'),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                const Center(child: SearchTextField()),
                SizedBox(height: 16.h),
                SelectPackage(
                  isInput: false,
                  text: 'English',
                  onChanged: (value) {},
                ),
                SizedBox(height: 8.h),
                SelectPackage(
                  isInput: false,
                  text: 'Arabic',
                  onChanged: (value) {},
                ),
                SizedBox(height: 8.h),
                SelectPackage(
                  isInput: false,
                  text: 'French',
                  onChanged: (value) {},
                ),
                SizedBox(height: 8.h),
                SelectPackage(
                  isInput: false,
                  text: 'Indian',
                  onChanged: (value) {},
                ),
                SizedBox(height: 8.h),
                SelectPackage(
                  isInput: false,
                  text: 'Germany',
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonContainer(
              buttonTitle: 'Save Changes',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
