import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xffdee2e7))),
      child: Column(
        children: [
          Image.asset(
            'assets/images/products/image 30.png',
            width: 98,
            height: 98,
          ),
          const SizedBox(height: 4),
          const Text(
            'Smart watches',
            style: TextStyle(
              color: Color(0xff1c1c1c),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffe3e3),
              borderRadius: BorderRadius.circular(29),
            ),
            child: const Text(
              '100%',
              style: TextStyle(
                color: Color(0xffeb001b),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
