import 'package:flutter/material.dart';
import 'package:woo_commerce/presentation/ordering/product_details_screen.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double? price;
  final double? discount;

  const ProductCard({
    super.key,
    required this.name,
    required this.imageUrl,
    this.price,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ProductDetailsScreen(),
          ),
        );
      },
      child: Container(
        height: double.infinity,
        width: 140,
        padding: const EdgeInsets.only(bottom: 14),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.primaryBorderColor),
            bottom: BorderSide(color: AppColors.primaryBorderColor),
            right: BorderSide(color: AppColors.primaryBorderColor),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 8),
            Image.network(
              imageUrl,
              width: 98,
              height: 98,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.smallTextStyle,
            ),
            if (price != null)
              Text(
                'From USD $price',
                style: AppStyle.smallTextStyle.copyWith(
                  color: AppColors.secondaryTextColor,
                ),
              ),
            if (discount != null)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE3E3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  '-$discount%',
                  style: const TextStyle(
                    color: Color(0xFFEB001B),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
