import 'package:flutter/material.dart';
import 'package:full_fridge_app/screens/Recipe/widgets/recipe_about_tab.dart';
import 'package:full_fridge_app/screens/Recipe/widgets/recipe_directions_tab.dart';
import 'package:full_fridge_app/screens/Recipe/widgets/recipe_ingredients_tab.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../constants/app_colors.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bookmarkController;

  @override
  void initState() {
    super.initState();
    _bookmarkController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();
    _bookmarkController.dispose();
  }

  bool bookmarked = false;
  int complexityIndex = 0;

  Widget difficultyTab(String text, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            complexityIndex = index;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: complexityIndex == index
                ? Colors.white
                : AppColors.backgroundFieldsColor,
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * .35,
                    decoration: const BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage('assets/images/food/pancake.jfif'),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      // color: Colors.amber,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () => Get.back()),
                        const CircleAvatar(
                          foregroundImage: AssetImage('assets/images/joji.jpg'),
                          radius: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fluffy Pancakes',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (bookmarked == false) {
                                bookmarked = true;
                                _bookmarkController.forward();
                              } else {
                                bookmarked = false;
                                _bookmarkController.reverse();
                              }
                            },
                            child: Lottie.asset(
                                'assets/animations/bookmarkActiveC.json',
                                height: 45,
                                width: 45,
                                fit: BoxFit.fitHeight,
                                controller: _bookmarkController),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: )
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.star_border,
                          color: AppColors.activeColor,
                          size: 17,
                        ),
                        SizedBox(width: 2),
                        Text(
                          '5.0',
                          style: TextStyle(
                              color: AppColors.activeColor, fontSize: 16),
                        ),
                      ],
                    ),
                    const Text(
                      '35 min',
                      style:
                          TextStyle(color: AppColors.activeColor, fontSize: 16),
                    ),
                    const Text(
                      'medium',
                      style:
                          TextStyle(color: AppColors.activeColor, fontSize: 16),
                    ),
                    const Text(
                      'by Iren John',
                      style:
                          TextStyle(color: AppColors.activeColor, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 40,
                  width: size.width,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppColors.backgroundFieldsColor,
                  ),
                  child: Row(
                    children: [
                      difficultyTab('About', 0),
                      difficultyTab('Ingredients', 1),
                      difficultyTab('Directions', 2),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (complexityIndex == 0) const RecipeScreenAboutTab(),
              if (complexityIndex == 1) const RecipeIngredientsTab(),
              if (complexityIndex == 2) const RecipeDirectionsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
