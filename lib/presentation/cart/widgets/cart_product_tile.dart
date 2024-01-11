import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

class CartProductTile extends StatelessWidget {
  const CartProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(bottom: BorderSide(color: AppColors.borderColor)),
      ),
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
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(6)),
                child: Image.asset(
                  'assets/images/products/Bitmap.png',
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'productName',
                      maxLines: 3,
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'productName',
                      maxLines: 3,
                      style: TextStyle(
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
