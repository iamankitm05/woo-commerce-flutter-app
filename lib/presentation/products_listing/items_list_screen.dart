import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woo_commerce/core/components/custom_rating_star/custom_rating_star.dart';
import 'package:woo_commerce/core/components/form_controls/custom_search.dart';
import 'package:woo_commerce/core/components/categories_tab_list/categories_tab_list.dart';
import 'package:woo_commerce/core/components/custom_app_bar/custom_app_bar.dart';
import 'package:woo_commerce/core/components/product_cards/product_card.dart';
import 'package:woo_commerce/core/components/product_cards/product_card_inline.dart';
import 'package:woo_commerce/data/dummy_data/products.dart';
import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/presentation/products_listing/widgets/custom_icon_button.dart';
import 'package:woo_commerce/presentation/products_listing/widgets/tag_button.dart';
import 'package:woo_commerce/presentation/ordering/product_details_screen.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});

  static const topNavItems = <String>[
    'Tablets',
    'Phones',
    'Ipads',
    'Ipod',
    'Jackaets',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'Mobile accessory ',
          style: AppStyle.titleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Column(
                children: [
                  CustomSearch(),
                  SizedBox(height: 12),
                  CategoriesTabList(categories: topNavItems),
                  SizedBox(height: 12),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: AppColors.primaryBorderColor),
                  bottom: BorderSide(color: AppColors.primaryBorderColor),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CustomIconButton(
                        text: 'Sort: Newest', iconData: Icons.sort),
                    const SizedBox(width: 4),
                    const CustomIconButton(
                        text: 'Filter (3)',
                        iconData: Icons.filter_alt_outlined),
                    const SizedBox(width: 4),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFDEE2E7),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          child: const Icon(
                            Icons.window_sharp,
                            color: Color(0xFF1C1C1C),
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF2F4),
                            border: Border.all(
                              color: const Color(0xFFDEE2E7),
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/listview.svg',
                            fit: BoxFit.scaleDown,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TagButton(text: 'Huawei', iconData: Icons.clear),
                    TagButton(text: 'Apple', iconData: Icons.clear),
                    TagButton(text: '64GB', iconData: Icons.clear),
                  ],
                ),
              ),
            ),

            // Items List
            ListView.builder(
              itemCount: dummyProducts.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemBuilder: (context, index) {
                final Product product = dummyProducts[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const ProductDetailsScreen(),
                      ),
                    );
                  },
                  child: ProductCardInline(
                    product: product,
                    footer: [
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          CustomRatingStar(
                            rating: product.rating,
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.circle,
                            size: 8,
                            color: AppColors.notRatedStarIconColor,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${product.totalOrders} orders',
                            style: AppStyle.smallTextStyle.copyWith(
                              color: AppColors.secondaryTextColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 7),
                      if (product.isShippingFree)
                        Text(
                          'Free Shipping',
                          style: AppStyle.smallTextStyle.copyWith(
                            color: AppColors.greenTextColor,
                          ),
                        )
                    ],
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'You may also like',
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
                                  child: ProductCard(product: product),
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
      ),
    );
  }
}
