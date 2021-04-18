import 'package:flutter/material.dart';

class BackButtonSafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
