import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CustomDrawerItem extends StatelessWidget {
  final String text;
  final IconData? iconData;

  const CustomDrawerItem({
    super.key,
    required this.text,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF1C1C1C),
        ),
      ),
      leading: iconData != null
          ? Icon(
              iconData,
              color: AppColor.iconColor,
              size: AppStyle.iconSize,
            )
          : const SizedBox(
              width: AppStyle.iconSize,
              height: AppStyle.iconSize,
            ),
    );
  }
}
