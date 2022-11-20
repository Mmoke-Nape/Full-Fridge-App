import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/custom_button.dart';

class RecipeIngredientsTab extends StatelessWidget {
  const RecipeIngredientsTab({
    Key? key,
  }) : super(key: key);

  static const ingredients_list = [
    {'i': 'All purpose flour', 'q': '1/2 cup'},
    {'i': 'White sugar', 'q': '1 tbsp'},
    {'i': 'Baking powder', 'q': '1 ts'},
    {'i': 'Salt', 'q': '1/2 ts'},
    {'i': 'Egg, beaten', 'q': '1/2'},
    {'i': 'Milk', 'q': '1/2 cup'},
    {'i': 'Vegetable', 'q': '1 tbsp'},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Portions',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 40,
            width: size.width * .6,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.backgroundFieldsColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '2 servings',
                  style: TextStyle(color: AppColors.activeColor),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: AppColors.activeColor,
                      ),
                    ),
                    Container(
                        height: 30, width: 0.5, color: AppColors.activeColor),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.activeColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Ingredients',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          itemCount: ingredients_list.length,
          // itemExtent: size.width * .6,
          // scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.donut_large_rounded,
                          color: AppColors.accentColor),
                      const SizedBox(width: 10),
                      Text(
                        ingredients_list[index]['i'].toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Text(
                    ingredients_list[index]['q'].toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            );
          }),
        ),
        const SizedBox(height: 20),
        CustomButton(
          press: () {},
          text: 'Add to shopping list',
          isInverted: true,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
