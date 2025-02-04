import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/transitions/page_slide.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/features/trainer_features/client_list/data/your_client_model.dart';
import 'package:forme_app/features/trainer_features/my_services/presentation/views/screens/cancellation_screen.dart';
import 'package:forme_app/features/trainee_features/Trainer_details/presentation/views/widgets/custom_clip_rect.dart';

class YourClientsCard extends StatelessWidget {
  const YourClientsCard({super.key, required this.size, required this.model});
  final Size size;
  final YourClientsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.n10Color,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8.0.h, bottom: 8.h, left: 6.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Center(
                    child: CustomClipRect(
                  height: 58,
                  width: 58,
                  imagePath: 'assets/image/avatar/${model.image}',
                )),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.clientName,
                      style: TextStyles.textStyleRegular.copyWith(
                          fontSize: 14.sp, color: AppColors.n900Black),
                    ),
                    Row(
                      children: [
                        Text(
                          model.clientLevel,
                          style: TextStyles.textStyleRegular.copyWith(
                              fontSize: 11.sp,
                              color: AppColors.p200PrimaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 1.w,
                            height: 12.h,
                            color: AppColors.n80NavColor,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: model.duration,
                              style: TextStyles.textStyleRegular.copyWith(
                                  fontSize: 11,
                                  color: AppColors.p200PrimaryColor),
                              children: <TextSpan>[
                                const TextSpan(text: ' '),
                                TextSpan(
                                  text: model.clientType,
                                  style: TextStyles.textStyleRegular.copyWith(
                                      fontSize: 11,
                                      color: AppColors.p200PrimaryColor),
                                ),
                              ]),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: AppColors.n100Gray,
                  ),
                  color: AppColors.background,
                  surfaceTintColor: Colors.transparent,
                  position: PopupMenuPosition.under,
                  constraints: const BoxConstraints(
                    minWidth: 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      height: 35,
                      child: Text(
                        'Message',
                      ),
                    ),
                    const PopupMenuItem(
                      height: 35,
                      child: Text(
                        'View Profile',
                      ),
                    ),
                    PopupMenuItem(
                      height: 35,
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: AppColors.d300Danger),
                      ),
                      onTap: () {
                        if (kDebugMode) {
                          print('Cancel');
                        }
                        Navigator.of(context).push(
                            PageSlideTransition(CancellationScreen(name: model.clientName)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
