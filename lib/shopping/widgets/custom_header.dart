import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  const CustomHeader({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: title,
      titleSpacing: 0,
      titleTextStyle: const TextStyle(
        color: Color(0xFF1C1C1C),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      actions: const [
        InkWell(
          child: Icon(Icons.shopping_cart_outlined),
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.person_outline),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
