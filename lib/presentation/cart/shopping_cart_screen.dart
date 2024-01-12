import 'package:flutter/material.dart';
import 'package:woo_commerce/core/components/custom_app_bar/custom_app_bar.dart';
import 'package:woo_commerce/core/components/form_controls/buttons/custom_outline_button.dart';
import 'package:woo_commerce/core/components/product_cards/product_card_inline.dart';
import 'package:woo_commerce/data/dummy_data/products.dart';
import 'package:woo_commerce/data/dummy_data/shopping_cart.dart';
import 'package:woo_commerce/data/models/product_model.dart';
import 'package:woo_commerce/data/models/shopping_cart_model.dart';
import 'package:woo_commerce/presentation/cart/widgets/cart_product_tile/cart_product_tile.dart';
import 'package:woo_commerce/presentation/cart/widgets/order_summary/order_summary.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  late final ShoppingCart shoppingCart;
  @override
  void initState() {
    super.initState();
    shoppingCart = dummyShoppingCart(
        [dummyProducts[0], dummyProducts[0], dummyProducts[1]]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'Shopping cart',
          style: AppStyle.titleTextStyle,
        ),
        hideActions: true,
        elevation: 1,
        shadowColor: AppColors.secondary,
      ),
      body: ListView(
        children: [
          ...shoppingCart.cartItems.map(
            (cartItem) {
              return CartProductTile(
                cartItem: cartItem,
                onAddButtonTap: () {
                  shoppingCart.addItemsInCart(cartItem.product);
                  setState(() {});
                },
                onRemoveButtonTap: () {
                  shoppingCart.removeItemsInCart(cartItem.product);
                  setState(() {});
                },
              );
            },
          ).toList(),

          OrderSummery(orderDetails: shoppingCart),
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

          // Save for later
          ListView.builder(
            itemCount: dummyProducts.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemBuilder: (context, index) {
              final Product product = dummyProducts[index];
              return ProductCardInline(
                product: product,
                footer: [
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: CustomOutlineButton(
                          text: 'Move to cart',
                          textColor: AppColors.primary,
                          onPressed: () {
                            shoppingCart.addItemsInCart(product);
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(width: 11),
                      SizedBox(
                        height: 30,
                        child: CustomOutlineButton(
                          onPressed: () {},
                          text: 'Remove',
                          textColor: AppColors.redTextColor,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
