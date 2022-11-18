import 'package:flutter/material.dart';
import 'package:full_fridge_app/screens/Fridge/widgets/add_ingredients_widget.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_routes.dart';
import '../../constants/constants.dart';
import '../../widgets/category_home_pill.dart';
import '../../widgets/searchbox_with_button.dart';

class FridgeScreen extends StatefulWidget {
  const FridgeScreen({Key? key}) : super(key: key);

  @override
  State<FridgeScreen> createState() => _FridgeScreenState();
}

class _FridgeScreenState extends State<FridgeScreen> {
  int complexityIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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

    final node = FocusNode();
    final controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
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
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        'Recipes',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
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
                  'Add ingredients',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 30, fontWeight: FontWeight.w900),
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
                      difficultyTab('Fridge', 0),
                      difficultyTab('Add ingredients', 1),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SearchBoxWithButton(
                controller: controller,
                node: node,
                press: () {},
                isSuffix: false,
                svgIcon: 'assets/icons/RiEqualizerLine.svg',
              ),
              const SizedBox(height: 20),
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                child: complexityIndex == 0
                    ? const AddIngredientsWidget()
                    : Column(
                        children: [
                          // List
                          const SizedBox(height: 30),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
