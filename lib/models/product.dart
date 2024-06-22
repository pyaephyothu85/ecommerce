import 'package:flutter/material.dart';

class Products {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Products({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });

  static void removeWhere(bool Function(dynamic item) param0) {}
}

final List<Products> product = [
  Products(
    title: "Shoes",
    description: "One of the best qual",
    image: "assets/shoes.jpg",
    price: 2000,
    colors: [
      Colors.blue,
      Colors.black,
      Colors.grey,
    ],
    category: "Shoes",
    rate: 5.0,
    quantity: 1,
  ),
  Products(
    title: "Cosmetic",
    description: "One of the best qual",
    image: "assets/cos3.jpg",
    price: 2000,
    colors: [
      Colors.blue,
      Colors.black,
      Colors.green,
    ],
    category: "",
    rate: 5.0,
    quantity: 1,
  ),
  
  Products(
    title: "Phone",
    description: "One of the best qualities",
    image: "assets/phone.jpg",
    price: 5000,
    colors: [
      Colors.blue,
      Colors.black,
      Colors.grey,
    ],
    category: "",
    rate: 5.0,
    quantity: 1,
  ),
  Products(
    title: "Backpack",
    description: "One of the best qualities",
    image: "assets/bag.jpg",
    price: 5000,
    colors: [
      Colors.green,
      Colors.pink,
      Colors.blue,
    ],
    category: "",
    rate: 5.0,
    quantity: 1,
  ),
  Products(
    title: "Speaker",
    description: "One of the best qual",
    image: "assets/speaker1.jpg",
    price: 2000,
    colors: [
      Colors.blue,
      Colors.black,
      Colors.yellow,
    ],
    category: "",
    rate: 5.0,
    quantity: 1,
  ),
  Products(
    title: "Earphones",
    description: "One of the best qualities",
    image: "assets/earphone.webp",
    price: 5000,
    colors: [
      Colors.blue,
      Colors.grey,
      Colors.red,
    ],
    category: "",
    rate: 5.0,
    quantity: 1,
  ),
];
