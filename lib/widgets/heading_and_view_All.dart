import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HeadingAndSideText extends StatelessWidget {
  const HeadingAndSideText({
    Key? key,
    required this.heading,
    required this.press,
    required this.sideText,
  }) : super(key: key);
  final String heading;
  final String sideText;
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
            child: Text(
              sideText,
              style:
                  const TextStyle(color: AppColors.activeColor, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
