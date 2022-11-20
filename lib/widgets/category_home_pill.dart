import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CategoryHomePill extends StatelessWidget {
  const CategoryHomePill({
    Key? key,
    required this.text,
    required this.color,
    this.small = false,
  }) : super(key: key);
  final String text;
  final Color color;
  final bool small;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: small ? 10 : 20, vertical: small ? 5 : 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: color, width: 2)),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold, color: color)),
    );
  }
}
