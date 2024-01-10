import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  final String bannerImage;
  final double minHeight;
  final Widget? child;
  final Gradient? gradient;
  const AppBanner({
    super.key,
    required this.bannerImage,
    this.minHeight = 0,
    this.child,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        bannerImage,
        fit: BoxFit.fill,
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(minHeight: minHeight),
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: child,
      ),
    ]);
  }
}
