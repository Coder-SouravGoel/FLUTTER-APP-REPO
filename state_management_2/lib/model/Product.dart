import 'package:flutter/cupertino.dart';

class Product {
  final String? id;
  final String? Title;
  final String? Description;
  final double? price;
  final String? imageUrl;
  bool isFavorite;

  Product(
      {this.id,
      this.Title,
      this.Description,
      this.price,
      this.imageUrl,
      this.isFavorite = false});
}
