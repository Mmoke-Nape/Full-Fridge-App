import 'package:flutter/material.dart';
import 'package:full_fridge_app/constants/app_colors.dart';
import 'package:full_fridge_app/constants/app_routes.dart';
import 'package:full_fridge_app/widgets/searchbox_with_button.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../widgets/category_home_pill.dart';
import '../../widgets/recommend_for_you_display.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final node = FocusNode();
    final controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: AppColors.accentColor),
                        onPressed: () => Get.back()),
                    Text(
                      'Favourite',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const CircleAvatar(
                      foregroundImage: AssetImage('assets/images/joji.jpg'),
                      radius: 20,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SearchBoxWithButton(
                      press: () {},
                      svgIcon: 'svgIcon',
                      node: node,
                      controller: controller,
                      isSuffix: false,
                    ),
                  ),
                  // const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: AppColors.activeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.addRecipeRoute);
                      },
                      icon: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                // padding: const EdgeInsets.only(left: 20),
                height: 40,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: category_List.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 20 : 5,
                          right: index == category_List.length - 1 ? 10 : 0),
                      child: CategoryHomePill(
                        text: category_List[index],
                        color: AppColors.activeColor,
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                // padding: const EdgeInsets.only(left: 20),
                // color: Colors.green,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  // itemExtent: size.width * .6,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: RecommendedForYouDisplay(
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
            ],
          ),
        ),
      ),
    );
  }
}
