import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CustomBadgeButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final String text;

  const CustomBadgeButton({
    super.key,
    required this.color,
    required this.backgroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          'Learn more',
          style:  AppStyle.smallTextStyle.copyWith(
            fontWeight: AppStyle.buttonFontWeight,
            color: color,
          ),
        ),
      ),
    );
  }
}
