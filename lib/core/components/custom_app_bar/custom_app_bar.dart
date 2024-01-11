import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool hideActions;
  const CustomAppBar({
    super.key,
    this.title,
    this.hideActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarBackgroundColor,
      surfaceTintColor: Colors.transparent,
      title: title,
      titleSpacing: 0,
      titleTextStyle: AppStyle.titleTextStyle,
      actions: !hideActions ? [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: AppStyle.iconSize,
            color: AppColors.appBarIconColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person_outlined,
            size: AppStyle.iconSize,
            color: AppColors.appBarIconColor,
          ),
        ),
        const SizedBox(width: 8),
      ] : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
