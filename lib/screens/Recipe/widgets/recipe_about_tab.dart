import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/category_home_pill.dart';
import '../../../widgets/custom_button.dart';

class RecipeScreenAboutTab extends StatelessWidget {
  const RecipeScreenAboutTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Is there anything more comforting than waking up on a Sunday morning to the irresistible scent of cheesy eggs, smoky bacon, and decadent pancakes? The answer is obviously no. But here's the thing: If you're pulling out all the stops for ajacks. ",
            style: TextStyle(
              color: AppColors.activeColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: const [
              CategoryHomePill(
                text: 'Breakfast',
                color: AppColors.accentColor,
                small: true,
              ),
              SizedBox(width: 10),
              CategoryHomePill(
                text: 'Non-vegan',
                color: AppColors.accentColor,
                small: true,
              ),
              SizedBox(width: 10),
              CategoryHomePill(
                text: 'American',
                color: AppColors.accentColor,
                small: true,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Nutrition per serving',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 70,
          width: size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.backgroundFieldsColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Calories',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '450',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                ],
              ),
              Container(height: 30, width: 0.5, color: AppColors.activeColor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Fat',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '22 g',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                ],
              ),
              Container(height: 30, width: 0.5, color: AppColors.activeColor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Protein',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '23 g',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                ],
              ),
              Container(height: 30, width: 0.5, color: AppColors.activeColor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Carbs',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '107 g',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.activeColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        CustomButton(press: () {}, text: "Let's start cooking"),
        const SizedBox(height: 20),
      ],
    );
  }
}
