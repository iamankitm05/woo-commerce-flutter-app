import 'package:flutter/material.dart';
import 'package:woo_commerce/core/components/custom_app_bar/custom_app_bar.dart';
import 'package:woo_commerce/core/components/custom_rating_star/custom_rating_star.dart';
import 'package:woo_commerce/core/components/form_controls/buttons/primary_button.dart';
import 'package:woo_commerce/core/components/product_cards/product_card.dart';
import 'package:woo_commerce/data/dummy_data/products.dart';
import 'package:woo_commerce/data/dummy_data/supplier.dart';
import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/presentation/ordering/widgets/favorite_button/favorite_button.dart';
import 'package:woo_commerce/presentation/ordering/widgets/product_details_table/product_details_table.dart';
import 'package:woo_commerce/presentation/ordering/widgets/supplier_details_card/supplier_details_card.dart';
import 'package:woo_commerce/presentation/ordering/widgets/text_with_icon/text_with_icon.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = dummyProducts[0];
    return Scaffold(
      appBar: const CustomAppBar(
        hideActions: true,
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                alignment: Alignment.topLeft,
                color: const Color(0xFFE7E7E7),
                child: Image.network(
                  product.imageUrl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 30,
                      height: 28,
                      decoration: BoxDecoration(
                          color: const Color(0x00000000).withOpacity(0.25),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          )),
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 28,
                      decoration: BoxDecoration(
                          color: const Color(0x00000000).withOpacity(0.25),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Color(0xFFDEE2E7)))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomRatingStar(rating: product.rating),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.circle,
                      size: 6,
                      color: AppColors.notRatedStarIconColor,
                    ),
                    const SizedBox(width: 8),
                    TextWithIcon(
                      iconData: Icons.message_outlined,
                      text: '${product.totalReviews} reviews',
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.circle,
                      size: 6,
                      color: AppColors.notRatedStarIconColor,
                    ),
                    const SizedBox(width: 8),
                    TextWithIcon(
                      iconData: Icons.shopping_basket_outlined,
                      text: '${product.totalSold} sold',
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Product name goes here',
                  style: AppStyle.baseTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text('\$${product.price}',
                        style: AppStyle.baseTextStyle.copyWith(
                          color: AppColors.redTextColor,
                          fontWeight: FontWeight.w600,
                        )),
                    const SizedBox(width: 8),
                    Text(
                      '(${product.quentity} pcs)',
                      style: AppStyle.smallTextStyle.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(text: 'Send inquery'),
                    ),
                    FavoriteButton()
                  ],
                ),
                const SizedBox(height: 20),
                ProductDetailsTable(productDetails: [
                  {
                    'label': 'Condation',
                    'value': product.condition,
                  },
                  {
                    'label': 'Material',
                    'value': product.buildMaterial,
                  },
                  {
                    'label': 'Category',
                    'value': product.category,
                  },
                  {
                    'label': 'Item number',
                    'value': product.itemNumber.toString(),
                  },
                ]),
                const SizedBox(height: 12),
                Text(
                  product.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppStyle.baseTextStyle,
                ),
                const SizedBox(height: 8),
                const InkWell(
                  child: Text(
                    'Read more',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontWeight: AppStyle.buttonFontWeight,
                    ),
                  ),
                )
              ],
            ),
          ),
          SupplierDetails(
            supplier: dummySuppliers[0],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Similar products',
                    style: AppStyle.titleTextStyle,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...dummyProducts
                          .map((product) => Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: ProductCard(product: product
                                ),
                              ))
                          .toList()
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
