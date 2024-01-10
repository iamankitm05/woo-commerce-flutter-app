import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CustomSearch extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsets margin;
  const CustomSearch({
    super.key,
    this.controller,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: TextField(
        controller: controller,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        style: AppStyle.baseTextStyle,
        decoration: AppStyle.customInputDecoration.copyWith(
            hintText: 'Search',
            prefixIcon: const Icon(
              Icons.search,
              size: AppStyle.iconSize,
              color: AppColors.iconColor,
            )),
      ),
    );
  }
}
