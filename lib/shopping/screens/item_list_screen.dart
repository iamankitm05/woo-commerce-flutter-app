import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woo_commerce/shopping/screens/item_details_screen.dart';
import 'package:woo_commerce/shopping/widgets/custom_header.dart';
import 'package:woo_commerce/shopping/widgets/horizontal_scroll_item_list.dart';
import 'package:woo_commerce/shopping/widgets/input_box.dart';
import 'package:woo_commerce/shopping/widgets/item_rating.dart';
import 'package:woo_commerce/shopping/widgets/product_category_list.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

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
      appBar: const CustomHeader(
        title: Text('Mobile accessory'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Column(
                children: [
                  InputBox(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Color(0xFF8B96A5),
                    ),
                  ),
                  SizedBox(height: 12),
                  ProductCategoryList(productCategories: topNavItems),
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
                  top: BorderSide(color: Color(0xFFDEE2E7)),
                  bottom: BorderSide(color: Color(0xFFDEE2E7)),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCenteredTextWithIconButton(
                        'Sort: Newest', Icons.sort),
                    const SizedBox(width: 4),
                    _buildCenteredTextWithIconButton(
                        'Filter (3)', Icons.filter_alt_outlined),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTextButtonWithIcon('Huawei', Icons.clear),
                    const SizedBox(width: 7),
                    _buildTextButtonWithIcon('Apple', Icons.clear),
                    const SizedBox(width: 7),
                    _buildTextButtonWithIcon('64GB', Icons.clear),
                  ],
                ),
              ),
            ),

            /// Items List
            // ListView.builder(
            //     itemCount: 0,
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     padding: const EdgeInsets.symmetric(horizontal: 12),
            //     itemBuilder: (context, index) => InkWell(
            //           onTap: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (builder) => const ItemDetailsScreen(),
            //               ),
            //             );
            //           },
            //           child: _buildProductCard(
            //             productName: products[index]['name']!,
            //             price: products[index]['price']!,
            //             imageUrl: products[index]['imageUrl']!,
            //             rating: products[index]['rating']!,
            //           ),
            //         )),

            /// Recommended items
            // const HorizontalScrollItemList(
            //   title: 'You may also like',
            //   products: products,
            // ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required String productName,
    required String price,
    required String imageUrl,
    double? rating,
    bool freeShiping = true,
    int totalOrder = 0,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFDEE2E7)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: 98,
            height: 98,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: const TextStyle(
                  color: Color(0xFF505050),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '\$$price',
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // Rate between 1-10
              ItemRating(
                rating: rating ?? 0,
                child: Row(
                  children: [
                    const SizedBox(width: 6),
                    const Icon(
                      Icons.circle,
                      size: 8,
                      color: Color(0xFFDEE2E7),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$totalOrder orders',
                      style: const TextStyle(
                        color: Color(0xFF8B96A5),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              if (freeShiping)
                const Text(
                  'Free Shipping',
                  style: TextStyle(
                    color: Color(0xFF00B517),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCenteredTextWithIconButton(String label, IconData iconData) {
    return Container(
      width: 130,
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDEE2E7)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            iconData,
            color: const Color(0xFF8B96A5),
            size: 18,
          ),
        ],
      ),
    );
  }

  Widget _buildTextButtonWithIcon(String label, IconData iconData) {
    return SizedBox(
      height: 30,
      child: TextButton.icon(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          side: const BorderSide(color: Color(0xFF0D6EFD)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        icon: Text(
          label,
          style: const TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        label: Icon(
          iconData,
          size: 20,
          color: const Color(0xFF1C1C1C),
        ),
      ),
    );
  }
}
