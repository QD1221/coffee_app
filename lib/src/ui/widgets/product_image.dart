import 'package:coffee_app/src/model/product.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: MediaQuery.of(context).size.width,
      image: NetworkImage(productItems[0].imageUrl.toString(), scale: 1),
      fit: BoxFit.cover,
    );
  }
}
