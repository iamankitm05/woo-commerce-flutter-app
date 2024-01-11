import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class TextWithIcon extends StatelessWidget {
  final IconData iconData;
  final String text;

  const TextWithIcon({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: AppColors.iconColor,
          size: AppStyle.smallIconSize,
        ),
        const SizedBox(width: 6),
        Text(text, style: AppStyle.smallTextStyle.copyWith(
          color: AppColors.secondaryTextColor,
        ))
      ],
    );
  }
}
