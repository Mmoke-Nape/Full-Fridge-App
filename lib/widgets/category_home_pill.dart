import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CategoryHomePill extends StatelessWidget {
  const CategoryHomePill({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: AppColors.activeColor, width: 2)),
      child: Text(text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.activeColor)),
    );
  }
}
