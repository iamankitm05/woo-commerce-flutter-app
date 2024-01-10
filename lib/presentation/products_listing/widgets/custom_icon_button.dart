import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData iconData;

  const CustomIconButton({
    super.key,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDEE2E7)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            iconData,
            color: AppColors.iconColor,
            size: 18,
          ),
        ],
      ),
    );
  }
}
