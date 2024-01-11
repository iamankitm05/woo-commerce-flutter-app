import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woo_commerce/data/models/supplier_model.dart';
import 'package:woo_commerce/utils/constants/app_colors.dart';
import 'package:woo_commerce/utils/constants/app_style.dart';

class SupplierDetails extends StatelessWidget {
  final Supplier supplier;

  const SupplierDetails({
    super.key,
    required this.supplier,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 48,
              width: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xFFC6F3F1),
                  borderRadius: BorderRadius.circular(8)),
              child: const Text('R'),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: AppColors.iconColor,
              size: AppStyle.iconSize,
            ),
            title: const Text(
              'Supplier',
              style: AppStyle.baseTextStyle,
            ),
            subtitle: Text(
              supplier.company,
              style: AppStyle.baseTextStyle,
            ),
          ),
          const Divider(),
          const SizedBox(height: 8),
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/DE@2x.png',
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(width: 7),
                  const Text(
                    'Germany',
                    style: TextStyle(
                      color: Color(0xFF505050),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 27),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/verified_user.svg',
                    width: AppStyle.smallIconSize,
                    height: AppStyle.smallIconSize,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    supplier.isVerified ? 'Verified' : 'Not Verified',
                    style: AppStyle.baseTextStyle,
                  )
                ],
              ),
              const SizedBox(width: 24),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/language.svg',
                    width: AppStyle.smallIconSize,
                    height: AppStyle.smallIconSize,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    supplier.status,
                    style: AppStyle.baseTextStyle,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
