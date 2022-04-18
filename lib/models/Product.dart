import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id, size;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image: 'assets/images/bag_1.png',
      title: "Offices code",
      price: 250 ,
      description: dummyText,
      size: 12,
      color: Color(0xFF3D82AE)),

  Product(
      id: 2,
      image: 'assets/images/bag_2.png',
      title: "Blet Bag",
      price: 350,
      description: dummyText,
      size: 15,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      image: 'assets/images/bag_3.png',
      title: "Hang Top",
      price: 350,
      description: dummyText,
      size: 16,
      color: Color(0xFF989493)),
  Product(
      id: 4,
      image: 'assets/images/bag_4.png',
      title: "Old Fashion",
      price: 550,
      description: dummyText,
      size: 13,
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      image: 'assets/images/bag_5.png',
      title: "Side Bag",
      price: 1300,
      description: dummyText,
      size: 18,
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      image: 'assets/images/bag_6.png',
      title: "Hand Bag",
      price: 750,
      description: dummyText,
      size: 15,
      color: Color(0xFFAEAEAE)),


];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";