import 'package:flutter/material.dart';
import 'package:woo_commerce/presentation/dashboard/home_screen.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

void main() {
  runApp(const WooCommerceApp());
}

class WooCommerceApp extends StatelessWidget {
  const WooCommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Woo commerce',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primary,
          background: AppColor.backgroundColor,
          primary: AppColor.primary,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
