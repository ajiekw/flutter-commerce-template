import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Cam 1",
      price: 200,
      image: "assets/images/unnamed.png",
      description: "product number 1"),
  Product(
      id: 2,
      title: "Cam 2",
      price: 200,
      image: "assets/images/cam2.svg",
      description: "product number 2"),
  Product(
      id: 3,
      title: "Cam 3",
      price: 200,
      image: "assets/images/cam3.svg",
      description: "product number 3"),
  Product(
      id: 4,
      title: "Cam 4",
      price: 200,
      image: "assets/images/cam4.svg",
      description: "product number 4"),
  Product(
      id: 5,
      title: "Cam 5",
      price: 200,
      image: "assets/images/cam5.svg",
      description: "product number 5"),
  Product(
      id: 6,
      title: "Cam 6",
      price: 200,
      image: "assets/images/cam6.svg",
      description: "product number 6"),
];
