import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/custom_button.dart';

class RecipeDirectionsTab extends StatefulWidget {
  const RecipeDirectionsTab({
    Key? key,
  }) : super(key: key);

  @override
  State<RecipeDirectionsTab> createState() => _RecipeDirectionsTabState();
}

class _RecipeDirectionsTabState extends State<RecipeDirectionsTab> {
  double value = 6;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Directions',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Step 1',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              "In a medium bowl, mix your dry ingredients. This includes the all-purpose flour, sugar, baking powder, baking soda, and kosher salt. Set aside."),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Step 2',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              "In a separate bowl, mix the wet ingredients: milk, eggs, vanilla extract, and melted butter. If you don't have butter, you could also use vegetable oil."),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Step 3',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Add the wet ingredients to the bowl with the dry ingredients. Stir to combine until you stop seeing flour. Remember to not over mix, which makes the batter tough. Set aside. Tip: A few lumps in your batter will keep the pancakes tender.",
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Ratings & Comments',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 15),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Tap to rate',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Center(
          child: SizedBox(
            width: size.width * .8,
            child: RatingStars(
                value: value,
                onValueChanged: (v) {
                  //
                  setState(() {
                    value = v;
                  });
                },
                starBuilder: (index, color) => Icon(
                      Icons.apple,
                      color: color,
                      size: 35,
                    ),
                starCount: 7,
                starSize: 30,

                // valueLabelColor: const Color(0xff9b9b9b),
                // valueLabelTextStyle: const TextStyle(
                //     color: Colors.white,
                //     fontWeight: FontWeight.w400,
                //     fontStyle: FontStyle.normal,
                //     fontSize: 12.0),
                // valueLabelRadius: 10,
                maxValue: 7,
                // // starSpacing: 2,
                // maxValueVisibility: true,
                // valueLabelVisibility: true,
                animationDuration: const Duration(milliseconds: 1000),
                // valueLabelPadding:
                //     const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                // valueLabelMargin: const EdgeInsets.only(right: 8),
                starOffColor: const Color(0xffe7e8ea),
                starColor: AppColors.accentColor),
          ),
        ),
        const SizedBox(height: 20),
        CustomButton(
          press: () {},
          text: 'Add review',
          isInverted: true,
        ),
        const SizedBox(height: 20),
        Container(
          width: size.width,
          height: size.height * .3,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        foregroundImage: AssetImage('assets/images/joji.jpg'),
                        radius: 20,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Pink Guy',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.star_border,
                        color: AppColors.accentColor,
                        size: 22,
                      ),
                      SizedBox(width: 2),
                      Text(
                        '5.0',
                        style: TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 70, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Very good but I added vanilla suger to enhance the taste. To my mind it makes it feel like I'm right back at home",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(letterSpacing: 1),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "More",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.accentColor,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/food/pancake.jfif'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 90,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.accentColor,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/food/pancake.jfif'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 90,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.activeColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "+1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  width: double.infinity, height: 0.5, color: Colors.grey[400]),
            ],
          ),
        ),
        // const SizedBox(height: 40),
        const SizedBox(height: 20),
        Container(
          width: size.width,
          height: size.height * .3,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.accentColor,
                        child: Center(child: Text('J')),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Janny',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.star_border,
                        color: AppColors.accentColor,
                        size: 22,
                      ),
                      SizedBox(width: 2),
                      Text(
                        '5.0',
                        style: TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 70, right: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Easy and Delicious",
                      style: TextStyle(letterSpacing: 1),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 90,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/food/pancake.jfif'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  width: double.infinity, height: 0.5, color: Colors.grey[400]),
            ],
          ),
        ),
      ],
    );
  }
}
