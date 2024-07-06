import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/features/trainer_features/my_services/data/my_session_up_coming_model.dart';
import 'package:forme_app/features/trainer_features/my_services/presentation/views/widgets/my_sessions_card.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

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
                itemCount: mySessionUpComingModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: MySessionsCard(
                      isCancelled: true,
                      name: mySessionUpComingModel[index].name,
                      date: mySessionUpComingModel[index].date,
                      from: mySessionUpComingModel[index].from,
                      to: mySessionUpComingModel[index].to,
                      callType: mySessionUpComingModel[index].callType,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
