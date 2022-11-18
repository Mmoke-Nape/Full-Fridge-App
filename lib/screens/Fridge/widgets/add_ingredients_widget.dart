import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class AddIngredientsWidget extends StatelessWidget {
  const AddIngredientsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Categories',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: .9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20),
              itemCount: categoryList.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  // height: 40,
                  // width: size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          categoryList[index].image,
                          // height: 70,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(categoryList[index].title),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
