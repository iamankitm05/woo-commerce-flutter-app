import 'package:flutter/material.dart';
import 'package:woo_commerce/core/components/form_controls/custom_badge_button.dart';
import 'package:woo_commerce/core/components/form_controls/custom_search.dart';
import 'package:woo_commerce/data/dummy_products.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/app_banner/app_banner.dart';
import 'package:woo_commerce/core/components/categories_tab_list/categories_tab_list.dart';
import 'package:woo_commerce/core/components/custom_app_bar/custom_app_bar.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/custom_side_drawer/custom_side_drawer.dart';
import 'package:woo_commerce/core/components/app_logo/app_logo.dart';
import 'package:woo_commerce/core/components/product_cards/product_card.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/products_section/products_section.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> categoriesTabList = <String>[
    'All Category',
    'Gadgets',
    'Clocthes',
    'Acceroies',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppLogo()),
      drawer: const CustomSideDrawer(),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Column(
              children: [
                CustomSearch(
                  margin: EdgeInsets.only(bottom: 16),
                ),
                CategoriesTabList(
                  categories: categoriesTabList,
                  margin: EdgeInsets.only(bottom: 18),
                ),
              ],
            ),
          ),

          AppBanner(
            bannerImage: 'assets/images/Banner-board-800x420 2.png',
            minHeight: 182,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest trending',
                  style: AppStyle.titleTextStyle
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const Text(
                  'Electronic items',
                  style: AppStyle.titleTextStyle,
                ),
                const SizedBox(height: 16),
                const CustomBadgeButton(
                  color: AppColors.primary,
                  backgroundColor: Colors.white,
                  text: 'Learn more',
                )
              ],
            ),
          ),

          // Deals and offers
          ProductSection(
            title: 'Deals and offers',
            subTitle: 'Electronic equipments',
            products: dummyProducts,
            showDiscount: true,
            showTimer: true,
          ),

          // Home and outdoor
          ProductSection(
            title: 'Home and outdoor',
            products: dummyProducts,
            footer: ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Source now',
                    style: AppStyle.baseTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primary,
                    size: AppStyle.smallIconSize,
                  )
                ],
              ),
            ),
          ),

          /// Consumer electronic
          ProductSection(
            title: 'Consumer electronic',
            products: dummyProducts,
            footer: ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Source now',
                    style: AppStyle.baseTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primary,
                    size: AppStyle.smallIconSize,
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          AppBanner(
            bannerImage: 'assets/images/image 102.png',
            minHeight: 155,
            gradient: const LinearGradient(
              begin: Alignment(-1, 0),
              end: Alignment(1, 0),
              colors: <Color>[
                Color(0xFF2C7CF1),
                Color(0x8800D1FF),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 217,
                  child: Text(
                    'An easy way to send requests to all suppliers',
                    style:
                        AppStyle.titleTextStyle.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                const CustomBadgeButton(
                  color: Colors.white,
                  backgroundColor: AppColors.primary,
                  text: 'Learn more',
                )
              ],
            ),
          ),

          const SizedBox(height: 10),

          /// Recommended items
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            title: Text(
              'Recommended items',
              style: TextStyle(
                color: Color(0xFF1C1C1C),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: dummyProducts.map((product) {
                return ProductCard(
                  productName: product.name,
                  productPrice: product.price,
                  productImageUrl: product.imageUrl,
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
