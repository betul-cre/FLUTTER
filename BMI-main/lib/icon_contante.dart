import 'package:flutter/material.dart';
import 'constant.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label, style: labelTextStyle)
      ],
    );
  }
}
