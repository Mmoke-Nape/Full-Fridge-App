import 'package:flutter/material.dart';

class Categories {
  final String title;
  final String image;

  Categories({required this.title, required this.image});
}

final categoryList = [
  Categories(
      title: 'Fruits',
      image:
          'https://st2.depositphotos.com/1020804/10330/i/950/depositphotos_103304814-stock-photo-mango-fruit-and-mango-cubes.jpg'),
  Categories(
      title: 'Vegetables',
      image:
          'https://w7.pngwing.com/pngs/441/626/png-transparent-celeriac-leaf-celery-vegetable-celtuce-herb-vegetable-leaf-vegetable-food-recipe.png'),
  Categories(
      title: 'Mushrooms',
      image:
          'https://www.vhv.rs/dpng/d/444-4447040_organic-mushroom-png-background-mushroom-transparent-png.png'),
  Categories(
      title: 'Seafood',
      image:
          'https://img.lovepik.com/free-png/20211212/lovepik-fresh-fish-png-image_401533937_wh1200.png'),
  Categories(
      title: 'Meat',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY_BJja_0fSO6J6v_EAvJEIo45khoTG4xUoQ&usqp=CAU'),
  Categories(
      title: 'Eggs',
      image:
          'https://image.similarpng.com/very-thumbnail/2021/10/Realistic-chicken-brown-egg-on-transparent-background-PNG.png'),
  Categories(
      title: 'Spices',
      image:
          'https://toppng.com/uploads/preview/saffron-png-download-saffron-png-zaafran-png-sor-saffron-11557191884nnahlrqdle.png'),
  Categories(
      title: 'Oils',
      image:
          'https://toppng.com/uploads/preview/olive-oil-11528319763jljqdpahzg.png'),
  Categories(
      title: 'Nuts',
      image: 'https://www.pngarts.com/files/4/Nut-PNG-Photo.png'),
];

const category_List = ['Breakfast', 'Brunch', 'Lunch', 'Snack', 'Dinner'];
