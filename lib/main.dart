import 'package:flutter/material.dart';
import 'package:woo_commerce/shopping/screens/home_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          background: const Color(0xFFF7FAFC),
          primary: const Color(0xff0d6efd),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
