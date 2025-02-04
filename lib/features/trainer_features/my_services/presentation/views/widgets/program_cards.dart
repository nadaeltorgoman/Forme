import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forme_app/core/utils/app_colors.dart';
import 'package:forme_app/core/utils/text_styles.dart';
import 'package:forme_app/features/trainee_features/Favorite/presentation/views/widgets/workout_card_type.dart';
import 'package:forme_app/features/trainee_features/home/presentation/views/widgets/special_programs_card_review.dart';

class CardsItem extends StatelessWidget {
  const CardsItem({
    super.key,
    required this.isPrograms,
    required this.type,
    this.state = 'Online',
    required this.image,
    this.videos = 17,
    required this.title,
    required this.clients,
    this.duration = '',
    required this.price,
    required this.rating,
    required this.reviews,
  });

  final bool isPrograms;
  final String type, state, title, duration,image;
  final double price, rating;
  final int reviews, videos, clients;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Wrap(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          width: size.width / 2.25,
          height: size.height / 3.75,
          decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: AppColors.n50dropShadowColor.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 10,
                cornerSmoothing: 1,
              ),
            ),
            color: AppColors.background,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: size.height / 3.75 / 2,
                  width: size.width / 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      'assets/image/$image',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                isPrograms
                    ? SpecialProgramsCardReview(
                        type: type,
                        state: state,
                        rating: rating,
                        review: reviews,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WorkoutCardType(
                            type: type,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                size: 10.r,
                                color: AppColors.starColor,
                              ),
                              Text(
                                '$rating ($reviews Reviews)',
                                style: TextStyles.cardTextStyle.copyWith(
                                    color: AppColors.n200Gray,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                Text(
                  title,
                  style: TextStyles.blackCardTextStyle,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/image/People.svg'),
                    const SizedBox(width: 6),
                    Text(
                      'Your Clients: ',
                      style: TextStyles.cardTextStyle.copyWith(
                        color: AppColors.n200Gray,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      '$clients clients',
                      style: TextStyles.cardTextStyle.copyWith(
                          color: AppColors.p200PrimaryColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'E£$price',
                      style: TextStyles.cardTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    isPrograms
                        ? Text(
                            ' /$duration',
                            style: TextStyles.cardTextStyle.copyWith(
                              color: AppColors.n200Gray,
                              fontSize: 9,
                            ),
                          )
                        : Text(
                            ' /$videos videos',
                            style: TextStyles.cardTextStyle.copyWith(
                              color: AppColors.n200Gray,
                              fontSize: 9,
                            ),
                          ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
