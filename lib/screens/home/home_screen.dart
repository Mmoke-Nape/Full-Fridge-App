import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants/app_colors.dart';
import '../../widgets/category_home_pill.dart';
import '../../widgets/custom_food_listtile.dart';
import '../../widgets/heading_and_view_All.dart';
import '../../widgets/recommend_for_you_display.dart';
import '../../widgets/searchbox_with_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const categoryList = [
    'Breakfast',
    'Brunch',
    'Lunch',
    'Snack',
    'Dinner'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPageColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/joji.jpg'),
              radius: 20,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Recipes',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Text(
                'Hi, Paulina!',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SearchBoxWithButton(
                press: () {}, svgIcon: 'assets/icons/RiEqualizerLine.svg'),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 0 : 5),
                    child: CategoryHomePill(text: categoryList[index]),
                  );
                }),
              ),
            ),
            const SizedBox(height: 30),
            HeadingAndViewAll(heading: 'Recommended for you', press: () {}),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: size.height * .27,
              // color: Colors.green,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                // itemExtent: size.width * .6,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
                    child: const RecommendedForYouDisplay(
                      title: 'Pumpkin Soup',
                      chefName: 'by Eliza Morris',
                      difficulty: 'easy',
                      time: '30',
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            HeadingAndViewAll(heading: 'Popular with users', press: () {}),
            const SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CustomFoodListTile(
                    image: 'assets/images/food/chicken_burger.jpg',
                    title: 'Chicken Burger',
                    cal: '360 ',
                    time: '15',
                    rating: '5.0',
                    difficulty: 'easy',
                    chef: 'Elin Solty',
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
