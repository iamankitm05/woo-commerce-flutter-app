import 'package:flutter/material.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/custom_side_drawer/custom_drawer_header.dart';
import 'package:woo_commerce/presentation/dashboard/widgets/custom_side_drawer/custom_drawer_item.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';

class CustomSideDrawer extends StatelessWidget {
  const CustomSideDrawer({super.key});

  static const List<Map<String, dynamic>> itemsList1 = [
    {'text': 'Home', 'iconData': Icons.home_outlined},
    {'text': 'Categories', 'iconData': Icons.list},
    {'text': 'Favorites', 'iconData': Icons.favorite_border},
    {'text': 'My orders', 'iconData': Icons.inventory},
  ];

  static const List<Map<String, dynamic>> itemsList2 = [
    {'text': 'English | USD', 'iconData': Icons.language},
    {'text': 'Contact us', 'iconData': Icons.headset_mic},
    {'text': 'About', 'iconData': Icons.business},
  ];

  static const List<Map<String, dynamic>> itemsList3 = [
    {'text': 'User Agrement'},
    {'text': 'Partnership'},
    {'text': 'Privacy'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: AppColors.drawerBackgroundColor,
      elevation: 0,
      child: Column(
        children: [
          const CustomDrawerHeader(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                // displaying 1st list of items
                ...itemsList1
                    .map(
                      (e) => CustomDrawerItem(
                        text: e['text'],
                        iconData: e['iconData'],
                      ),
                    )
                    .toList(),

                const Divider(),
                // displaying 2nd list of items
                ...itemsList2
                    .map(
                      (e) => CustomDrawerItem(
                        text: e['text'],
                        iconData: e['iconData'],
                      ),
                    )
                    .toList(),

                const Divider(),
                // displaying 3rd list of items
                ...itemsList3
                    .map(
                      (e) => CustomDrawerItem(
                        text: e['text'],
                        iconData: e['iconData'],
                      ),
                    )
                    .toList(),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
