import 'package:flutter/material.dart';
import 'package:woo_commerce/data/products.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color(0xFF1C1C1C).withOpacity(0.4),
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Shopping cart ',
          style: TextStyle(
            color: Color(0xFF1C1C1C),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildCartProductView(
            productName: 'T-shirts with multiple colors for men',
            productDetails: 'Size: medium, Color: blue, Seller: Artel Market',
          ),
          _buildCartProductView(
            productName: 'T-shirts with multiple colors for men',
            productDetails: 'Size: medium, Color: blue, Seller: Artel Market',
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Color(0xFFDEE2E7)))),
            child: Column(
              children: [
                _buildItemPriceView(
                  productName: 'Items (3):',
                  productPrice: '\$32.00',
                ),
                const SizedBox(height: 8),
                _buildItemPriceView(
                  productName: 'Shipping:',
                  productPrice: '\$10.00',
                ),
                const SizedBox(height: 8),
                _buildItemPriceView(
                  productName: 'Tax:',
                  productPrice: '\$7.00',
                ),
                const SizedBox(height: 8),
                _buildItemPriceView(
                  productName: 'Total:',
                  productPrice: '\$220.00',
                  isTotal: true,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF00B517),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Text('Checkout (3 items)'),
                  ),
                )
              ],
            ),
          ),
          const ListTile(
            title: Text(
              'Saved for later',
              style: TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListView.builder(
            itemCount: products.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _buildSavedForLaterItemCard(
                  productName: products[index]['name'],
                  price: products[index]['price'],
                  imageUrl: products[index]['imageUrl']);
            },
          )
        ],
      ),
    );
  }

  Widget _buildSavedForLaterItemCard({
    required String productName,
    required String price,
    required String imageUrl,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFDEE2E7)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            width: 98,
            height: 98,
            child: Image.network(
              imageUrl,
              width: 98,
              height: 98,
            ),
          ),
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
              const SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFDEE2E7)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                      ),
                      child: const Text(
                        'Move to cart',
                        style: TextStyle(
                          color: Color(0xFF0D6EFD),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFDEE2E7)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                      ),
                      child: const Text(
                        'Remove',
                        style: TextStyle(
                          color: Color(0xFFFA3434),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItemPriceView({
    required String productName,
    required String productPrice,
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          productName,
          style: TextStyle(
            color: isTotal ? const Color(0xFF1C1C1C) : const Color(0xFF8B96A5),
            fontSize: 16,
            fontWeight: isTotal ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
        Text(
          productPrice,
          style: const TextStyle(
            color: Color(0xFF1C1C1C),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Widget _buildCartProductView(
      {required String productName, required String productDetails}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xFFEFF2F4)))),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 72,
                padding: const EdgeInsets.all(4.5),
                decoration: BoxDecoration(
                    color: const Color(0xFFF7F7F7),
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(6)),
                child: Image.asset(
                  'assets/images/products/Bitmap.png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      maxLines: 3,
                      style: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      productName,
                      maxLines: 3,
                      style: const TextStyle(
                        color: Color(0xFF8B96A5),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.more_vert),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFDEE2E7)),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    child: const Icon(Icons.remove),
                  ),
                  Container(
                    width: 70,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFDEE2E7)),
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFDEE2E7)),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
              const Text(
                '\$78.99',
                style: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
