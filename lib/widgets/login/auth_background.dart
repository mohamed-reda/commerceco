import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthBackground extends StatelessWidget {
  String image;

  AuthBackground({this.image = "assets/f.jpg"});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      decoration: new BoxDecoration(
        color: Theme.of(context).backgroundColor,
        image: new DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: new Container(
          decoration: new BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
      ),
    )
        //
        // Container(
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   child: Image.asset(
        //     image,
        //     fit: BoxFit.cover,
        //   ),
        // ),
        );
  }
}
