import 'package:flutter/material.dart';
import 'package:full_fridge_app/widgets/category_home_pill.dart';
import 'package:full_fridge_app/widgets/heading_and_view_All.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../widgets/custom_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const categoryList = [
    'Breakfast',
    'Brunch',
    'Lunch',
    'Appetizers',
    'Snack',
    'Dessert',
    'Dinner',
  ];

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double timeSliderValue = 2;
  String timeSliderLable = 'under 45 min';

  double calSliderValue = 2;
  String calSliderLable = '600-799 Cal';

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
            color:
                complexityIndex == index ? Colors.white : AppColors.activeColor,
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
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new),
              color: AppColors.activeColor),
          backgroundColor: AppColors.backgroundPageColor,
          centerTitle: true,
          title: Text(
            'Filters',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Clear All',
                  style: TextStyle(
                    color: AppColors.activeColor,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SliderTheme(
              data: SliderThemeData(
                  activeTrackColor: AppColors.activeColor,
                  inactiveTrackColor: AppColors.activeColor,
                  activeTickMarkColor: AppColors.activeColor,
                  inactiveTickMarkColor: AppColors.activeColor,
                  thumbColor: AppColors.activeColor,
                  trackHeight: 3,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 15),
                  overlayColor: AppColors.activeColor.withOpacity(.2),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Dish type',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 112,
                                // childAspectRatio: 2.3,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20),
                        itemCount: 7,
                        itemBuilder: (BuildContext ctx, index) {
                          return CategoryHomePill(
                              text: FilterScreen.categoryList[index],
                              color: AppColors.accentColor);
                        }),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Show more',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.accentColor,
                            decorationThickness: 2,
                            shadows: [
                              Shadow(
                                  color: AppColors.accentColor,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
                  HeadingAndSideText(
                    heading: 'Time',
                    press: () {},
                    sideText: timeSliderLable,
                  ),
                  const SizedBox(height: 20),
                  //Time Slider
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Slider(
                        value: timeSliderValue,
                        min: 0,
                        max: 4,
                        divisions: 4,
                        onChanged: (value) {
                          setState(() {
                            timeSliderValue = value;

                            switch (timeSliderValue.toInt()) {
                              case 0:
                                timeSliderLable = 'under 15 min';
                                break;
                              case 1:
                                timeSliderLable = 'under 30 min';
                                break;
                              case 2:
                                timeSliderLable = 'under 45 min';
                                break;
                              case 3:
                                timeSliderLable = 'under 1 hr';
                                break;
                              case 4:
                                timeSliderLable = '1 hour +';
                                break;
                              default:
                              // something if anything not match
                            }
                          });
                        }),
                  ),
                  const SizedBox(height: 20), const SizedBox(height: 20),
                  HeadingAndSideText(
                    heading: 'Calorie per Serving',
                    press: () {},
                    sideText: calSliderLable,
                  ),
                  const SizedBox(height: 20),
                  //Time Slider
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Slider(
                        value: calSliderValue,
                        min: 0,
                        max: 4,
                        divisions: 4,
                        onChanged: (value) {
                          setState(() {
                            calSliderValue = value;

                            switch (calSliderValue.toInt()) {
                              case 0:
                                calSliderLable = '200-399 Cal';
                                break;
                              case 1:
                                calSliderLable = '400-599 Cal';
                                break;
                              case 2:
                                calSliderLable = '600-799 Cal';
                                break;
                              case 3:
                                calSliderLable = '800-999 Cal';
                                break;
                              case 4:
                                calSliderLable = '1000+ Cal';
                                break;
                              default:
                              // something if anything not match
                            }
                          });
                        }),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Complexity',
                      style: Theme.of(context).textTheme.bodyText1,
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
                        color: AppColors.activeColor,
                      ),
                      child: Row(
                        children: [
                          difficultyTab('Easy', 0),
                          difficultyTab('Medium', 1),
                          difficultyTab('Hard', 2),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Occasions',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(text: 'Show Results', press: () {}),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
