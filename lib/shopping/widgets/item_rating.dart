import 'package:flutter/material.dart';

class ItemRating extends StatelessWidget {
  final double rating;
  final bool showRating;
  final Widget? child;

  const ItemRating({
    super.key,
    this.rating = 0,
    this.showRating = true,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 1; i <= 10; i += 2)
          _buildStar(
              i <= rating ? const Color(0xFFFF9017) : const Color(0xFFD4CDC5)),
        if (showRating) ...[
          const SizedBox(width: 5),
          Text(
            '$rating',
            style: const TextStyle(
              color: Color(0xFFFF9017),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
        if (child != null) SizedBox(child: child),
      ],
    );
  }

  Widget _buildStar(Color color) {
    return Icon(
      Icons.star,
      color: color,
      size: 16,
    );
  }
}
