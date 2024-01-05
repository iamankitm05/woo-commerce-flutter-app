import 'package:flutter/material.dart';

class TextWithIconButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final Color color;
  final Color borderColor;
  final double fontSize;
  final FontWeight fontWeight;
  const TextWithIconButton({
    super.key,
    required this.label,
    required this.icon,
    this.color = const Color(0xFF1C1C1C),
    this.borderColor = const Color(0xFFDEE2E7),
    this.fontSize = 13,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
      label: Align(
        alignment: Alignment.centerRight,
        child: icon,
      ),
    );
    // return Container(
    //   width: width,
    //   height: height,
    //   padding: const EdgeInsets.symmetric(horizontal: 5),
    //   decoration: BoxDecoration(
    //       border: Border.all(color: borderColor),
    //       borderRadius: BorderRadius.circular(8)),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: Text(
    //           label,
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //             color: color,
    //             fontSize: fontSize,
    //             fontWeight: fontWeight,
    //           ),
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // );
  }
}
