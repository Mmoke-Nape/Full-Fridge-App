import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';

class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Text(
                'Create your own recipe',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: size.height * .3,
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.backgroundFieldsColor,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt,
                          size: 40, color: AppColors.activeColor),
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Add cover image',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: AppColors.activeColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
