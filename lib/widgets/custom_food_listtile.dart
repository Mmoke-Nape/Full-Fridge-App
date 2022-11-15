import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomFoodListTile extends StatelessWidget {
  const CustomFoodListTile({
    Key? key,
    required this.image,
    required this.title,
    required this.cal,
    required this.time,
    required this.rating,
    required this.difficulty,
    required this.chef,
  }) : super(key: key);

  final String image;
  final String title;
  final String cal;
  final String time;
  final String rating;
  final String difficulty;
  final String chef;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(right: 10),
      width: size.width,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: AppColors.accentColor,
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Image.asset(image, fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18),
                    ),
                    const Icon(Icons.bookmark_outline,
                        color: AppColors.accentColor)
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  '$cal kcal | $time min',
                  style: const TextStyle(
                    color: AppColors.activeColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_border,
                          color: AppColors.activeColor,
                          size: 15,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          rating,
                          style: const TextStyle(
                              color: AppColors.activeColor, fontSize: 13),
                        ),
                      ],
                    ),
                    Text(
                      difficulty,
                      style: const TextStyle(
                        color: AppColors.activeColor,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'by $chef',
                      style: const TextStyle(
                        color: AppColors.activeColor,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // padding: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
