import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final double productPrice;
  final String productImageUrl;
  final EdgeInsets margin;

  const ProductCard({
    super.key,
    this.margin = EdgeInsets.zero,
    required this.productName,
    required this.productPrice,
    required this.productImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(10),
      width: 160,
      height: 240,
      decoration: AppStyle.primaryBoxDecoration.copyWith(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Image.network(
              productImageUrl,
              width: 152,
              height: 152,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$$productPrice',
                  style: AppStyle.baseTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  productName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStyle.smallTextStyle.copyWith(
                    color: AppColors.secondaryTextColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
