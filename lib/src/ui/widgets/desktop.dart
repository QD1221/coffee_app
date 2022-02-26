import 'package:coffee_app/src/model/product.dart';
import 'package:coffee_app/src/ui/widgets/product_image.dart';
import 'package:coffee_app/src/ui/widgets/radio_button.dart';
import 'package:coffee_app/src/ui/widgets/title_and_desc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'option_title.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 200, child: ProductImage()),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 4),
          child: Column(
            children: [
              SizedBox(
                height: 125,
                child: Column(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: TitleAndDesc(),
                    ),
                    const Divider(height: 1),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: quantitySelectRow(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
                child: OptionTitle(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 220,
                    child: CustomRadioButton(padding: 8),
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: addToCartButton(),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget quantitySelectRow() {
    TextStyle? subtitle1 = Theme.of(context).textTheme.subtitle1;

    return Row(
      children: [
        Text(
          '฿ ${productItems[0].price!.toInt()}',
          style: subtitle1?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.grey[700],
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_quantity > 1) {
                    _quantity--;
                  }
                });
              },
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 13,
                child: Icon(
                  CupertinoIcons.minus,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Text(
              '$_quantity',
              style: subtitle1?.copyWith(
                fontSize: 16,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  _quantity++;
                });
              },
              child: CircleAvatar(
                backgroundColor: Colors.brown[400],
                radius: 13,
                child: const Icon(
                  CupertinoIcons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget addToCartButton() {
    TextStyle? button = Theme.of(context).textTheme.button;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.brown[900],
      ),
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.shopping_cart,
            size: 20,
          ),
          Text(
            'ADD $_quantity TO CART',
            style: button?.copyWith(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          Text(
            '฿ ${productItems[0].price!.toInt() * _quantity} ',
            style: button?.copyWith(
              color: Colors.white.withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}
