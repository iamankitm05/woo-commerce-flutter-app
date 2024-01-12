import 'package:flutter/material.dart';
import 'package:woo_commerce/presentation/cart/shopping_cart_screen.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class PrimaryButton extends StatelessWidget {
  final Color color;
  final String text;

  const PrimaryButton({
    super.key,
    required this.text,
    this.color = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShoppingCartScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: AppColors.whiteTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: AppStyle.buttonFontWeight,
          fontSize: 16,
        ),
      ),
    );
  }
}
