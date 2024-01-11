import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: const BorderSide(
          color: AppColors.borderColor,
          width: 1.5,
        ),
      ),
      icon: const Icon(
        Icons.favorite_border,
        color: AppColors.primary,
        size: AppStyle.iconSize,
      ),
    );
  }
}
