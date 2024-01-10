import 'package:flutter/material.dart';

class ProductCardInline extends StatelessWidget {
  final String productName;
  final double productPrice;
  final String productImageUrl;
  final Widget? footer;

  const ProductCardInline({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImageUrl,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
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
            productImageUrl,
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
                '\$$productPrice',
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // if want to add extra data on 3rd line
              if (footer != null) SizedBox(child: footer)
            ],
          )
        ],
      ),
    );
  }
}


// // Rate between 1-10
//               ItemRating(
//                 rating: rating ?? 0,
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 6),
//                     const Icon(
//                       Icons.circle,
//                       size: 8,
//                       color: Color(0xFFDEE2E7),
//                     ),
//                     const SizedBox(width: 4),
//                     Text(
//                       '$totalOrder orders',
//                       style: const TextStyle(
//                         color: Color(0xFF8B96A5),
//                         fontSize: 13,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               if (freeShiping)
//                 const Text(
//                   'Free Shipping',
//                   style: TextStyle(
//                     color: Color(0xFF00B517),
//                     fontSize: 13,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),