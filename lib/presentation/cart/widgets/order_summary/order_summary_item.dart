import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

class OrderSummeryItem extends StatelessWidget {
  final String label;
  final String value;

  const OrderSummeryItem({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$label:',
          style: TextStyle(
            color: label.toUpperCase() == 'TOTAL'
                ? AppColors.primaryTextColor
                : AppColors.secondaryTextColor,
            fontSize: 16,
            fontWeight: label.toUpperCase() == 'TOTAL'
                ? FontWeight.w500
                : FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.primaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
