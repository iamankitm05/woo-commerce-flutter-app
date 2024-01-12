import 'package:flutter/material.dart';
import 'package:woo_commerce/data/models/shopping_cart_item_model.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CartProductTile extends StatelessWidget {
  final ShoppingCartItem cartItem;
  final VoidCallback? onAddButtonTap;
  final VoidCallback? onRemoveButtonTap;

  const CartProductTile({
    super.key,
    required this.cartItem,
    this.onAddButtonTap,
    this.onRemoveButtonTap,
  });

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
                child: Image.network(
                  cartItem.product.imageUrl,
                  width: 72,
                  height: 72,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.product.name,
                      maxLines: 3,
                      style: AppStyle.baseTextStyle,
                    ),
                    Text(
                      cartItem.product.properties,
                      maxLines: 3,
                      style: AppStyle.smallTextStyle.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.more_vert,
                size: AppStyle.iconSize,
                color: AppColors.iconColor,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: onRemoveButtonTap,
                    child: Container(
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
                  ),
                  Container(
                    width: 70,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFDEE2E7)),
                    ),
                    child: Text(
                      cartItem.quentity.toString(),
                      style: AppStyle.baseTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: onAddButtonTap,
                    child: Container(
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
                  ),
                ],
              ),
              Text(
                '\$${cartItem.totalPrice.toStringAsFixed(2)}',
                style: AppStyle.baseTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
