import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  final double previousPrice;
  final String colors;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.previousPrice,
    required this.price,
    required this.colors,
  });

  factory Product.initial() => Product(
        id: '',
        name: '',
        imageUrl: '',
        description: '',
        previousPrice: 0.0,
        price: 0.0,
        colors: '',
      );
}
