import 'package:flutter/material.dart';

class TimerTile extends StatelessWidget {
  final String label;
  final String time;

  const TimerTile({
    super.key,
    required this.label,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 44,
      color: Colors.grey[200],
      margin: const EdgeInsets.only(left: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 0),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 11,
                fontWeight: FontWeight.w400,
                height: 0),
          ),
        ],
      ),
    );
  }
}
