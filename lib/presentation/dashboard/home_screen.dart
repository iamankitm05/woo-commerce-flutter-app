import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/custom_side_drawer/custom_side_drawer.dart';
import 'package:woo_commerce/shopping/widgets/app_banner.dart';
import 'package:woo_commerce/shopping/widgets/app_logo.dart';
import 'package:woo_commerce/shopping/widgets/custom_header.dart';
import 'package:woo_commerce/shopping/widgets/input_box.dart';
import 'package:woo_commerce/shopping/widgets/product_category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(title: AppLogo()),
      drawer: const CustomSideDrawer(),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                InputBox(
                  hintText: 'Search',
                  prefixIcon: SvgPicture.asset('assets/icons/search.svg'),
                ),
                const SizedBox(height: 12),
                // const ProductCategoryList(
                //   productCategories: topNavItems,
                // ),
                const SizedBox(height: 12),
              ],
            ),
          ),

          AppBanner(
            bannerImage: 'assets/images/Banner-board-800x420 2.png',
            minHeight: 182,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Latest trending',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'Electronic items',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: const Text('Learn more'),
                  ),
                )
              ],
            ),
          ),

          /// Deals and offers
          // _buildProductsSections(
          //   title: 'Deals and offers',
          //   subTitle: 'Electronic equipments',
          //   trailing: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       _buildTimmerCard(label: 'HH', time: '22'),
          //       _buildTimmerCard(label: 'MM', time: '22'),
          //       _buildTimmerCard(label: 'SS', time: '22'),
          //     ],
          //   ),
          //   products: products,
          //   showDiscount: true,
          // ),

          /// Home and outdoor
          // _buildProductsSections(
          //   title: 'Home and outdoor',
          //   hideFooter: false,
          //   products: products,
          //   showPrice: true,
          // ),

          /// Consumer electronic
          // _buildProductsSections(
          //   title: 'Consumer electronic',
          //   hideFooter: false,
          //   products: products,
          //   showPrice: true,
          // ),

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
                const SizedBox(
                  width: 217,
                  child: Text(
                    'An easy way to send requests to all suppliers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF0067FF),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: const Text('Learn more'),
                  ),
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
          // GridView.builder(
          //   itemCount: products.length,
          //   shrinkWrap: true,
          //   padding: const EdgeInsets.symmetric(horizontal: 16),
          //   physics: const NeverScrollableScrollPhysics(),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 8,
          //     crossAxisSpacing: 8,
          //     mainAxisExtent: 240,
          //   ),
          //   itemBuilder: (BuildContext context, int index) =>
          //       _buildProductCard1(
          //     productName: products[index]['name']!,
          //     imageUrl: products[index]['imageUrl']!,
          //     price: products[index]['price']!,
          //   ),
          // ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildProductCard1({
    required String productName,
    required String imageUrl,
    required String price,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFDEE2E7)),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              imageUrl,
              width: 108,
              height: 122,
            ),
          ),
          const SizedBox(height: 31),
          Text(
            '\$$price',
            style: const TextStyle(
              color: Color(0xFF1c1c1c),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            productName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFF8B96A5),
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 0,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProductsSections({
    required String title,
    String? subTitle,
    Widget? trailing,
    bool hideFooter = true,
    bool showDiscount = false,
    bool showPrice = false,
    required List products,
  }) {
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
              style: const TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle,
                    style: const TextStyle(),
                  )
                : null,
            trailing: trailing,
          ),

          // product list
          SizedBox(
            width: double.infinity,
            height: 180,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              // product card
              itemBuilder: (context, index) => _buildProductCard2(
                  productName: products[index]['name']!,
                  discount:
                      showDiscount ? '-${products[index]["discount"]}%' : null,
                  price: showPrice ? products[index]['price']! : null,
                  imageUrl: products[index]['imageUrl']!),
            ),
          ),

          if (!hideFooter)
            ListTile(
              title: TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                ),
                icon: const Text(
                  'Source now',
                  style: TextStyle(
                    color: Color(0xFF0D6EFD),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                label: const Icon(
                  Icons.arrow_forward,
                  color: Color(0xFF0D6EFD),
                  size: 22,
                ),
              ),
            )
        ],
      ),
    );
  }

  Widget _buildProductCard2({
    required String productName,
    String? price,
    String? discount,
    required String imageUrl,
  }) {
    return Container(
      height: double.infinity,
      width: 140,
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFDEE2E7)),
          bottom: BorderSide(color: Color(0xFFDEE2E7)),
          right: BorderSide(color: Color(0xFFDEE2E7)),
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
          const SizedBox(height: 6),
          Text(
            productName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFF1c1c1c),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (price != null)
            Text(
              '\$$price',
              style: const TextStyle(
                  color: Color(0xFF8B96A5),
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
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
                discount,
                style: const TextStyle(
                  color: Color(0xFFEB001B),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTimmerCard({required String label, required String time}) {
    return Container(
      width: 45,
      height: 44,
      color: Colors.grey[200],
      margin: const EdgeInsets.only(left: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 0),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 11,
                fontWeight: FontWeight.w400,
                height: 0),
          ),
        ],
      ),
    );
  }
}
