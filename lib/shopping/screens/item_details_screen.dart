import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woo_commerce/shopping/screens/shopping_cart_screen.dart';
import 'package:woo_commerce/shopping/widgets/custom_header.dart';
import 'package:woo_commerce/shopping/widgets/horizontal_scroll_item_list.dart';
import 'package:woo_commerce/shopping/widgets/item_rating.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                alignment: Alignment.topLeft,
                color: const Color(0xFFE7E7E7),
                child: Image.asset(
                  'assets/images/products/image 34.png',
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
                ItemRating(
                  rating: 7.5,
                  showRating: false,
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      ..._buildBulletIconText(
                        '32 reviews',
                        Icons.message_outlined,
                      ),
                      const SizedBox(width: 8),
                      ..._buildBulletIconText(
                        '154 sold',
                        Icons.shopping_basket_outlined,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Product name goes here',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      '\$129.95',
                      style: TextStyle(
                        color: Color(0xFFFA3434),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '(50-100 pcs)',
                      style: TextStyle(
                        color: Color(0xFF8B96A5),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const ShoppingCartScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0067FF),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        child: const Text(
                          'Send inquery',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: const BorderSide(color: Color(0xFFDEE2E7))),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color(0xFF0D6EFD),
                        size: 24,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                Table(
                  columnWidths: const {
                    0: FractionColumnWidth(0.4),
                    1: FractionColumnWidth(0.6),
                  },
                  children: [
                    _buildItemDataRow('Condition', 'Brand new'),
                    _buildItemDataRow('Material', 'Plastic'),
                    _buildItemDataRow('Category', 'Electronics, gadgets'),
                    _buildItemDataRow('Item num', '23421'),
                  ],
                ),
                const Text(
                  'Info about edu item is an ideal companion for anyone engaged in learning. The drone provides precise and...',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF505050)),
                ),
                const SizedBox(height: 8),
                const InkWell(
                  child: Text(
                    'Read more',
                    style: TextStyle(
                      color: Color(0xFF0D6EFD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFDEE2E7)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xFFC6F3F1),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text('R'),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF8B96A5),
                    size: 24,
                  ),
                  title: const Text(
                    'Supplier',
                    style: TextStyle(
                      color: Color(0xFF505050),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Text(
                    'Guanjoi Trading LLC',
                    style: TextStyle(
                      color: Color(0xFF505050),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/DE@2x.png',
                          width: 14,
                          height: 14,
                        ),
                        const SizedBox(width: 7),
                        const Text(
                          'Germany',
                          style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 27),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/verified_user.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'Verified',
                          style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 27),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/language.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'Shipping',
                          style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // const HorizontalScrollItemList(
          //   title: 'Similar products',
          //   products: products,
          // ),
          // const SizedBox(height: 100),
        ],
      ),
    );
  }

  TableRow _buildItemDataRow(String label, String value) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          label,
          style: const TextStyle(
            color: Color(0xFF8B96A5),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          value,
          style: const TextStyle(
            color: Color(0xFF505050),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      )
    ]);
  }

  List<Widget> _buildBulletIconText(String text, IconData icon) {
    return [
      const Icon(
        Icons.circle,
        size: 8,
        color: Color(0xFFDEE2E7),
      ),
      const SizedBox(width: 8),
      Icon(
        icon,
        size: 18,
        color: const Color(0xFFBDC4CD),
      ),
      const SizedBox(width: 6),
      Text(
        text,
        style: const TextStyle(
          color: Color(0xFF787A80),
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      )
    ];
  }
}
