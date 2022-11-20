import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../providers/user_fridge.dart';
import '../../../widgets/custom_button.dart';

class FridgeWidgetTab extends StatelessWidget {
  const FridgeWidgetTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: fridge_ingredients.length,
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Colors.grey),
          ),
          itemBuilder: ((context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.accentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: Image.network(
                    //     fridge_ingredients[index].image),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          fridge_ingredients[index].title,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          '${fridge_ingredients[index].quanity} pcs',
                          style: const TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(fridge_ingredients[index].date),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                      icon:
                          const Icon(Icons.edit, color: AppColors.accentColor),
                      onPressed: () {}),
                ],
              ),
            );
          }),
        ),
        const SizedBox(height: 30),
        CustomButton(press: () {}, text: 'Start Searching'),
        const SizedBox(height: 30),
      ],
    );
  }
}
