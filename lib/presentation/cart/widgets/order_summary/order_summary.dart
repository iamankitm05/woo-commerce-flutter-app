import 'package:flutter/material.dart';
import 'package:woo_commerce/core/components/form_controls/buttons/primary_button.dart';
import 'package:woo_commerce/data/models/shopping_cart_model.dart';
import 'package:woo_commerce/presentation/cart/widgets/order_summary/order_summary_item.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

class OrderSummery extends StatelessWidget {
  final ShoppingCart orderDetails;

  const OrderSummery({
    super.key,
    required this.orderDetails,
  });

  @override
  Widget build(BuildContext context) {
    const double itemsSpacing = 6;
    final double totalPrice;
    final double tax;
    final double shippingPrice;
    if (orderDetails.cartItems.isNotEmpty) {
      totalPrice = orderDetails.totalPrice +
          orderDetails.tax +
          orderDetails.shippingPrice;
      tax = orderDetails.tax;
      shippingPrice = orderDetails.shippingPrice;
    } else {
      totalPrice = 0;
      shippingPrice = 0;
      tax = 0;
    }
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xFFDEE2E7)))),
      child: Column(children: [
        OrderSummeryItem(
          label: 'Items (${orderDetails.cartItems.length})',
          value: orderDetails.totalPrice.toStringAsFixed(2),
        ),
        const SizedBox(height: itemsSpacing),
        OrderSummeryItem(
          label: 'Shipping',
          value: shippingPrice.toStringAsFixed(2),
        ),
        const SizedBox(height: itemsSpacing),
        OrderSummeryItem(
          label: 'Tax',
          value: tax.toStringAsFixed(2),
        ),
        const SizedBox(height: itemsSpacing),
        OrderSummeryItem(
          label: 'Total',
          value: totalPrice.toStringAsFixed(2),
        ),
        const SizedBox(height: itemsSpacing),
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(
            text: 'Checkout (${orderDetails.cartItems.length} items)',
            color: AppColors.green,
          ),
        )
      ]),
    );
  }
}
