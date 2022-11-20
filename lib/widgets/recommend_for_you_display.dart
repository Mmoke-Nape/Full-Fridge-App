import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/app_colors.dart';

class RecommendedForYouDisplay extends StatefulWidget {
  const RecommendedForYouDisplay({
    Key? key,
    required this.title,
    required this.difficulty,
    required this.time,
    required this.chefName,
  }) : super(key: key);

  final String title;
  final String difficulty;
  final String time;
  final String chefName;

  @override
  State<RecommendedForYouDisplay> createState() =>
      _RecommendedForYouDisplayState();
}

class _RecommendedForYouDisplayState extends State<RecommendedForYouDisplay>
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
    return Container(
      width: size.width * .5,
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            height: size.height * .2,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.accentColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/food/Pumpkin-Soup-Bowl.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 10),
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
                          height: 40,
                          width: 40,
                          fit: BoxFit.fitHeight,
                          controller: _bookmarkController),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.time} min',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.difficulty,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(widget.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              GestureDetector(
                onTap: () {},
                child: Text(
                  widget.chefName,
                  style: const TextStyle(
                      color: AppColors.activeColor, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(
                Icons.star_border,
                color: AppColors.activeColor,
                size: 15,
              ),
              SizedBox(width: 2),
              Text(
                '5.0',
                style: TextStyle(color: AppColors.activeColor, fontSize: 11),
              )
            ],
          )
        ],
      ),
    );
  }
}
