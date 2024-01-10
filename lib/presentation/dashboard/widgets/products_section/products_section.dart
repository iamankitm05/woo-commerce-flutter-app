import 'package:flutter/material.dart';
import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/products_section/product_card.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/products_section/timer_tile.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Widget? footer;
  final bool showDiscount;
  final bool showTimer;
  final List<Product> products;

  const ProductSection({
    super.key,
    required this.title,
    this.subTitle,
    required this.products,
    this.showDiscount = false,
    this.showTimer = false,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Text(
              title,
              style: AppStyle.titleTextStyle,
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle!,
                    style: AppStyle.smallTextStyle.copyWith(
                      color: AppColors.subTitleTextColor,
                    ),
                  )
                : null,
            trailing: showTimer
                ? const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TimerTile(label: 'HH', time: '13'),
                      TimerTile(label: 'MM', time: '34'),
                      TimerTile(label: 'SS', time: '56'),
                    ],
                  )
                : null,
          ),

          // product list
          SizedBox(
            width: double.infinity,
            height: 180,
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                // product card
                itemBuilder: (context, index) {
                  final Product product = products[index];
                  if (showDiscount) {
                    return ProductCard(
                      name: product.name,
                      imageUrl: product.imageUrl,
                      discount: product.discount,
                    );
                  }
                  return ProductCard(
                    name: product.name,
                    imageUrl: product.imageUrl,
                    price: product.price,
                  );
                }),
          ),

          if (footer != null)
            SizedBox(
              child: footer,
            )
        ],
      ),
    );
  }
}
