import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBackground extends StatelessWidget {
  String image;

  AppBackground({this.image = "assets/category.jpg"});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
