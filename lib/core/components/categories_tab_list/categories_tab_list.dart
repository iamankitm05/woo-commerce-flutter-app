import 'package:flutter/material.dart';
import 'package:woo_commerce/presentation/products_listing/items_list_screen.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class CategoriesTabList extends StatelessWidget {
  final List<String> categories;
  final double height;
  final EdgeInsets margin;

  const CategoriesTabList({
    super.key,
    this.height = 40,
    this.margin = EdgeInsets.zero,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 4),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ItemsListScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 10)),
                child: Text(
                  categories[index],
                  style: AppStyle.baseTextStyle.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
