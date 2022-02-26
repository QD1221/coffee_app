import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    int? id,
    double? price,
    String? title,
    String? description,
    String? imageUrl,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

List<Product> productItems = [
  Product(
    id: 0,
    title: 'Flat White',
    price: 125,
    description: 'Freshly-ground beans and steamed milk',
    imageUrl:
        'https://images.myguide-cdn.com/whitsundays/companies/the-coffee-club-airlie-beach/large/the-coffee-club-airlie-beach-322487.jpg',
  )
];
