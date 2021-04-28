import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
  });
}

List<Product> products = [
  Product(id: 1, title: "smoki", price: 234, image: "assets/images/bag_1.png"),
  Product(
      id: 2, title: "tortilje", price: 234, image: "assets/images/bag_2.png"),
  Product(id: 3, title: "cips", price: 234, image: "assets/images/bag_3.png"),
  Product(
      id: 4, title: "cips ljuti", price: 234, image: "assets/images/bag_4.png"),
  Product(
      id: 5, title: "tortilje", price: 234, image: "assets/images/bag_5.png"),
];
