import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: SvgPicture.asset('assets/icons/2.svg'),
            ),
            SvgPicture.asset('assets/icons/1.svg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 7),
              child: SvgPicture.asset('assets/icons/Group 2.svg',),
            ),
          ],
        ),
        const SizedBox(width: 6),
        SvgPicture.asset('assets/icons/Brand.svg'),
      ],
    );
  }
}
