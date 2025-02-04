import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/features/trainer_features/my_services/data/my_session_cancelled_model.dart';
import 'package:forme_app/features/trainer_features/my_services/presentation/views/widgets/my_sessions_card.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key});

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
                itemCount: mySessionCancelledModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: MySessionsCard(
                          name: mySessionCancelledModel[index].name,
                          date: mySessionCancelledModel[index].date,
                          from: mySessionCancelledModel[index].from,
                          to: mySessionCancelledModel[index].to,
                          callType: mySessionCancelledModel[index].callType
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
