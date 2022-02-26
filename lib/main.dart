import 'package:coffee_app/src/ui/screens/detail_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee App',
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}
