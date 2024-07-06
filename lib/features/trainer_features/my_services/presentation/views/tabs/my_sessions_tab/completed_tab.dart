import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/features/trainer_features/my_services/data/my_session_completed_model.dart';
import 'package:forme_app/features/trainer_features/my_services/presentation/views/widgets/my_sessions_card.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.only(top: 23.6.h),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: mySessionCompletedModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: MySessionsCard(
                        isCancelled: true,
                        name: mySessionCompletedModel[index].name,
                        date: mySessionCompletedModel[index].date,
                        from: mySessionCompletedModel[index].from,
                        to: mySessionCompletedModel[index].to,
                        callType: mySessionCompletedModel[index].callType,
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
