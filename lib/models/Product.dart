import 'package:fashion_app/models/ColorProduct.dart';
import 'package:flutter/cupertino.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;
  final List<ColorProduct> colorProducts;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
    required this.colorProducts,
  });
}

List<Product> demo_product = [
  Product(
      image: "assets/images/product_0.png",
      title: "Long Sleeve Shirts",
      price: 165,
      bgColor: const Color(0xFFFEFBF9),
      colorProducts: [
        ColorProduct(color: Color.fromARGB(255, 226, 175, 175), isActive: true),
        ColorProduct(color: Color.fromARGB(255, 16, 46, 48), isActive: false),
        ColorProduct(color: Color.fromARGB(255, 153, 114, 24), isActive: false)
      ]),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
    colorProducts: [
      ColorProduct(color: const Color(0xFF141B4A), isActive: true),
      ColorProduct(color: const Color(0xFFBEE8EA), isActive: false),
      ColorProduct(color: const Color(0xFFF4E5C3), isActive: false)
    ],
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
    colorProducts: [
      ColorProduct(color: Color.fromARGB(255, 8, 61, 32), isActive: true),
      ColorProduct(color: Color.fromARGB(255, 145, 201, 15), isActive: false),
      ColorProduct(color: Color.fromARGB(255, 85, 60, 2), isActive: false)
    ],
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    colorProducts: [
      ColorProduct(color: Color.fromARGB(255, 20, 74, 36), isActive: true),
      ColorProduct(color: Color.fromARGB(255, 134, 2, 42), isActive: false),
      ColorProduct(color: Color.fromARGB(255, 214, 151, 34), isActive: false),
      ColorProduct(color: Color.fromARGB(255, 20, 17, 11), isActive: false)
    ],
  ),
];
