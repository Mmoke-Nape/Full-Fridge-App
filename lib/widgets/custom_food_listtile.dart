import 'package:flutter/material.dart';
import 'package:full_fridge_app/constants/app_routes.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../constants/app_colors.dart';

class CustomFoodListTile extends StatefulWidget {
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
  State<CustomFoodListTile> createState() => _CustomFoodListTileState();
}

class _CustomFoodListTileState extends State<CustomFoodListTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bookmarkController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookmarkController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bookmarkController.dispose();
  }

  bool bookmarked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.recipeRoute),
      child: Container(
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
                  child: Image.asset(widget.image, fit: BoxFit.cover)),
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
                        widget.title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 18),
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
                        child: Lottie.asset('assets/animations/bfinal.json',
                            height: 35,
                            width: 35,
                            fit: BoxFit.fitHeight,
                            controller: _bookmarkController),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${widget.cal} kcal | ${widget.time} min',
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
                            widget.rating,
                            style: const TextStyle(
                                color: AppColors.activeColor, fontSize: 13),
                          ),
                        ],
                      ),
                      Text(
                        widget.difficulty,
                        style: const TextStyle(
                          color: AppColors.activeColor,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'by ${widget.chef}',
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
      ),
    );
  }
}
