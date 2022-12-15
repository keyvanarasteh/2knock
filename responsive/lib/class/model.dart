import 'package:flutter/material.dart';

class Shoes {
  String title;
  String model;
  String image;
  String image2;
  String image3;
  String price;
  String description;

  Shoes(this.title, this.model, this.image, this.image2, this.image3,
      this.price, this.description);
}

class ListModel {
  static final List<Shoes> items = [
    Shoes(
      'Nike Winflo 9 ',
      "Men's road running shoes",
      "images/nike.png",
      "images/dollar-symbol.png",
      "images/shoes.png",
      '175',
      'The Winflo 9 gives you the support you need to match your speed. It has a secure fit that keeps your foot in place as the miles go by. We added plenty of foam through the midsole, giving you extra pep to every step. Lace up, lock in, win your goals.',
    ),
    Shoes(
      'Nike Winflo ',
      "Men's road running shoes",
      "images/nike.png",
      "images/dollar-symbol.png",
      "images/shoes1.webp",
      '145',
      'The Winflo 9 gives you the support you need to match your speed. It has a secure fit that keeps your foot in place as the miles go by. We added plenty of foam through the midsole, giving you extra pep to every step. Lace up, lock in, win your goals.',
    ),
    Shoes(
      'Nike Dunk High Retro',
      "Men's road running shoes",
      "images/nike.png",
      "images/dollar-symbol.png",
      "images/dunk-high.png",
      '250',
      'The Winflo 9 gives you the support you need to match your speed. It has a secure fit that keeps your foot in place as the miles go by. We added plenty of foam through the midsole, giving you extra pep to every step. Lace up, lock in, win your goals.',
    ),
    Shoes(
      'Nike Air Force 1 Mid',
      "Men's road running shoes",
      "images/nike.png",
      "images/dollar-symbol.png",
      "images/air-force-1.png",
      '250',
      'The Winflo 9 gives you the support you need to match your speed. It has a secure fit that keeps your foot in place as the miles go by. We added plenty of foam through the midsole, giving you extra pep to every step. Lace up, lock in, win your goals.',
    ),
  ];
}
