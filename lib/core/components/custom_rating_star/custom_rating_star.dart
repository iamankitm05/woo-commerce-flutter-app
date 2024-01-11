import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CustomRatingStar extends StatelessWidget {
  final double rating;
  final bool showText;
  final double maxRating;
  final double maxStar;

  const CustomRatingStar({
    super.key,
    required this.rating,
    this.showText = true,
    this.maxRating = 10,
    this.maxStar = 5,
  });

  @override
  Widget build(BuildContext context) {
    final increseAmount = maxRating ~/ maxStar;
    return Row(
      children: [
        // rate between [0-maxRating]
        for (int i = 1; i <= maxRating; i += increseAmount)
          Icon(
            Icons.star,
            color: i <= rating
                ? AppColors.ratedStarIconColor
                : AppColors.notRatedStarIconColor,
            size: AppStyle.ratingStarIconSize,
          ),
        const SizedBox(width: 8),
        if (showText)
          Text(
            rating.toString(),
            style: AppStyle.smallTextStyle.copyWith(
              color: AppColors.ratedStarIconColor,
            ),
          ),
      ],
    );
  }
}
