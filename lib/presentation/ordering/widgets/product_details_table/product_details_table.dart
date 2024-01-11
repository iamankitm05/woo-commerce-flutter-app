import 'package:flutter/material.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ProductDetailsTable extends StatelessWidget {
  final double bottomPadding;
  final List<Map<String, dynamic>> productDetails;

  const ProductDetailsTable({
    super.key,
    required this.productDetails,
    this.bottomPadding = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.6),
      },
      children: productDetails.map((productDetail) {
        return TableRow(children: [
          Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: Text(
              productDetail['label'],
              style: AppStyle.baseTextStyle.copyWith(
                color: AppColors.secondaryTextColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: Text(
              productDetail['value'],
              style: AppStyle.baseTextStyle,
            ),
          )
        ]);
      }).toList(),
    );
  }
}
