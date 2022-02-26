import 'package:flutter/material.dart';

Widget backButton() {
  return const Padding(
    padding: EdgeInsets.only(top: 8.0),
    child: CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(
        Icons.arrow_back,
        color: Colors.grey,
      ),
    ),
  );
}
