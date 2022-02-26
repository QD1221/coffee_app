import 'package:coffee_app/src/helpers/responsiveness.dart';
import 'package:coffee_app/src/ui/widgets/back_button.dart';
import 'package:coffee_app/src/ui/widgets/desktop.dart';
import 'package:coffee_app/src/ui/widgets/mobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: backButton(),
      body: const ResponsiveWidget(
        largeScreen: DesktopScreen(),
        smallScreen: MobileScreen(),
      ),
    );
  }
}
