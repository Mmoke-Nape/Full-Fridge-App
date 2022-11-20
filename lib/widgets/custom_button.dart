import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.press,
      required this.text,
      this.isInverted = false})
      : super(key: key);
  final Function() press;
  final String text;
  final bool isInverted;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: 60,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: isInverted ? null : AppColors.accentColor,
            border: Border.all(
                width: 2,
                color: isInverted
                    ? AppColors.accentColor
                    : AppColors.backgroundPageColor),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isInverted ? null : Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
