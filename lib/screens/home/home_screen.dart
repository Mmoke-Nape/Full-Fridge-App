import 'package:flutter/material.dart';
import 'package:full_fridge_app/constants/app_routes.dart';
import 'package:get/get.dart';
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
    final node = FocusNode();
    final controller = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: 80,
                color: AppColors.backgroundPageColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Recipes',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        foregroundImage: AssetImage('assets/images/joji.jpg'),
                        radius: 20,
                      ),
                    ),
                  ],
                ),
              ),
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
                  controller: controller,
                  node: node,
                  press: () {
                    print("Thanks for the solution");
                    Get.toNamed(AppRoutes.filterRoute);
                  },
                  svgIcon: 'assets/icons/RiEqualizerLine.svg'),
              const SizedBox(height: 30),
              SizedBox(
                // padding: const EdgeInsets.only(left: 20),
                height: 40,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 20 : 5,
                          right: index == categoryList.length - 1 ? 10 : 0),
                      child: CategoryHomePill(
                        text: categoryList[index],
                        color: AppColors.activeColor,
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 30),
              HeadingAndSideText(
                  heading: 'Recommended for you',
                  press: () {},
                  sideText: 'View all'),
              const SizedBox(height: 15),
              SizedBox(
                // padding: const EdgeInsets.only(left: 20),
                height: size.height * .27,
                // color: Colors.green,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  // itemExtent: size.width * .6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 20 : 15,
                          right: index == categoryList.length - 1 ? 10 : 0),
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
              HeadingAndSideText(
                  heading: 'Popular with users',
                  press: () {},
                  sideText: 'View all'),
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
      ),
    );
  }
}
