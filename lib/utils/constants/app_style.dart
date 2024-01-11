import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

class AppStyle {
  // icons
  static const double iconSize = 24;
  static const double ratingStarIconSize = 16;
  static const double mediumIconSize = 22;
  static const double smallIconSize = 18;

  // font weights
  static const FontWeight buttonFontWeight = FontWeight.w500;

  // texts
  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.dark,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
  );

  static const TextStyle baseTextStyle = TextStyle(
    color: AppColors.dark,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );

  static const TextStyle smallTextStyle = TextStyle(
    color: AppColors.dark,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
  );

  // form-controls
  static InputDecoration customInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(10),
    prefixIcon: const Icon(Icons.search),
    prefixIconColor: AppColors.iconColor,
    hintStyle: baseTextStyle.copyWith(
      color: AppColors.secondaryTextColor,
    ),
    border: const OutlineInputBorder(),
    prefixIconConstraints: BoxConstraints.tight(const Size(36, 20)),
    suffixIconConstraints: BoxConstraints.tight(const Size(36, 20)),
    isDense: true,
    enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.borderColor)),
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.activeBorderColor)),
  );

  // border
  static final BoxDecoration primaryBoxDecoration = BoxDecoration(
    border: Border.all(color: AppColors.primaryBorderColor),
    borderRadius: BorderRadius.circular(8),
  );
}
