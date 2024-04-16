import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forme_app/core/transitions/page_slide.dart';
import 'package:forme_app/features/trainee_features/featured/presentation/featured_screen.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/sections/listing.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/featured_workouts.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/nearby_sports_clubb.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/special_programs.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/top_trainers_list.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/text_styles.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const HomeAppBar(),
              TopTrainersList(
                onTap: () {
                  Navigator.of(context).push(
                    PageSlideTransition(
                      const FeaturedScreen(
                        featureType: "Top trainer",
                        filterTypes: [
                          'all',
                          'GYM',
                          'Swimming',
                          'Boxing',
                          'Running'
                        ],
                      ),
                    ),
                  );
                },
              ),
              SpecialPrograms(onTap: () {}),
              FeaturedWorkouts(onTap: () {}),

              // Listing(
              //   title: 'Special Offers Clubs',
              //   onTap: () {
              //     Navigator.of(context).push(
              //       PageSlideTransition(
              //         const FeaturedScreen(
              //           featureType: "Special Offers",
              //           filterTypes: [
              //             'all',
              //             'GYM',
              //             'Swimming',
              //             'Boxing',
              //             'Running'
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              //   isVertical: true,
              //   listHeight: 1.9,
              // )
            ],
          ),
        ),
        SliverToBoxAdapter(child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 16.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby Sports Club',
                style: TextStyles.textStyleBold.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: AppColors.n900Black,
                ),
              ),
              GestureDetector(
                // onTap: onTap,
                child: Text(
                  'See all',
                  style: TextStyles.textStyleRegular.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),),
        NearbySpotsClub(
          onTap: () {
            Navigator.of(context).push(
              PageSlideTransition(
                const FeaturedScreen(
                  featureType: "Special Offers",
                  filterTypes: [
                    'all',
                    'GYM',
                    'Swimming',
                    'Boxing',
                    'Running'
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
