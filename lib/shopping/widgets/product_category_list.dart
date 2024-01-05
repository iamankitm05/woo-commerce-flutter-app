import 'package:flutter/material.dart';
import 'package:woo_commerce/shopping/screens/item_list_screen.dart';

class ProductCategoryList extends StatelessWidget {
  final List<String> productCategories;
  const ProductCategoryList({
    super.key,
    required this.productCategories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productCategories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 4),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ItemListScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 10)),
              child: Text(productCategories[index]),
            ),
          );
        },
      ),
    );
  }
}
