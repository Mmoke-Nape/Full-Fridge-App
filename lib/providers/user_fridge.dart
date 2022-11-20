import 'package:flutter/material.dart';

class Fridge {
  final String id;
  final String title;
  final String date;
  final String image;
  final String quanity;

  Fridge({
    required this.id,
    required this.title,
    required this.date,
    required this.image,
    required this.quanity,
  });
}

final fridge_ingredients = [
  Fridge(
    id: '1',
    title: 'Red Pepper',
    date: '06/02/2002',
    image:
        'https://i5.walmartimages.com/asr/7be94a8e-9a5d-4f87-842f-5fe4084138ba.c95d36e140f5e0d492ca632b42e4543c.jpeg',
    quanity: '2',
  ),
  Fridge(
    id: '2',
    title: 'Lettues',
    date: '06/02/2002',
    image: 'https://cdn.britannica.com/77/170677-050-F7333D51/lettuce.jpg',
    quanity: '1',
  ),
  Fridge(
    id: '3',
    title: 'Cherry Tomatoes',
    date: '06/02/2002',
    image:
        'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/90144355_XL1_20220824.jpg',
    quanity: '4',
  ),
  Fridge(
    id: '3',
    title: 'Cherry Tomatoes',
    date: '06/02/2002',
    image:
        'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/90144355_XL1_20220824.jpg',
    quanity: '4',
  ),
  Fridge(
    id: '3',
    title: 'Cherry Tomatoes',
    date: '06/02/2002',
    image:
        'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/90144355_XL1_20220824.jpg',
    quanity: '4',
  ),
];
