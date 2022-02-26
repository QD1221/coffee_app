import 'package:coffee_app/src/model/product.dart';
import 'package:flutter/material.dart';

class TitleAndDesc extends StatelessWidget {
  const TitleAndDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? headline6 = Theme.of(context).textTheme.headline6;
    TextStyle? caption = Theme.of(context).textTheme.caption;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          productItems[0].title.toString(),
          style: headline6?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.65),
          ),
        ),
        const SizedBox(height: 8),
        Text(productItems[0].description.toString(),
            style: caption?.copyWith(
                fontWeight: FontWeight.w500, color: Colors.grey[500])),
      ],
    );
  }
}
