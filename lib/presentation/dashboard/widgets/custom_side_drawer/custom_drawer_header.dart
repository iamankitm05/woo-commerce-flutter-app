import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: AppColor.drawerHeaderbackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipOval(
            child: Image.asset('assets/images/Avatar.jpg'),
          ),
          const Row(
            children: [
              Text('Sign', style: AppStyle.baseTextStyle),
              Text(' | ', style: AppStyle.baseTextStyle),
              Text('Register', style: AppStyle.baseTextStyle),
            ],
          )
        ],
      ),
    );
  }
}
