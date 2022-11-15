import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HeadingAndViewAll extends StatelessWidget {
  const HeadingAndViewAll({
    Key? key,
    required this.heading,
    required this.press,
  }) : super(key: key);
  final String heading;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              'View all',
              style: TextStyle(color: AppColors.activeColor, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
