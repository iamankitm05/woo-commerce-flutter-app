import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class TagButton extends StatelessWidget {
  final String text;
  final IconData iconData;

  const TagButton({
    super.key,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
                color: AppColors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(width: 9),
          Icon(
            iconData,
            size: AppStyle.smallIconSize,
            color: AppColors.iconColor,
          ),
        ],
      ),
    );
  }
}
