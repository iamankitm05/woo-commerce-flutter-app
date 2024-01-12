import 'package:flutter/material.dart';
import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/presentation/ordering/product_details_screen.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final EdgeInsets margin;

  const ProductCard({
    super.key,
    this.margin = EdgeInsets.zero, required this.product,
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
                product.imageUrl,
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
                    '\$${product.price}',
                    style: AppStyle.baseTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    product.name,
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
      ),
    );
  }
}
