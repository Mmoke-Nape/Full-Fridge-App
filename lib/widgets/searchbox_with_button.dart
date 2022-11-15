import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants/app_colors.dart';

class SearchBoxWithButton extends StatelessWidget {
  const SearchBoxWithButton({
    Key? key,
    required this.press,
    required this.svgIcon,
  }) : super(key: key);
  final Function() press;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 40,
        child: TextField(
          // controller: emailController,
          cursorColor: AppColors.accentColor,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.backgroundPageColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              filled: true,
              fillColor: AppColors.activeColor.withOpacity(0.25),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.backgroundPageColor, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.activeColor.withOpacity(0.25), width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              focusColor: AppColors.activeColor,
              // hintStyle: TextStyle(color: AppColors.activeColor),
              // hintText: 'Your email address',
              prefixIcon: const Icon(
                Icons.search_rounded,
                color: AppColors.activeColor,
              ),
              suffixIcon: GestureDetector(
                onTap: () => press,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: WebsafeSvg.asset(
                    svgIcon,
                    color: AppColors.activeColor,
                  ),
                ),
              )),
          // style: const TextStyle(color: AppColors.grey3),
          keyboardType: TextInputType.text,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          // validator: (email) =>
          //     email != null && !EmailValidator.validate(email)
          //         ? 'Enter a valid email'
          //         : null,
        ),
      ),
    );
  }
}
