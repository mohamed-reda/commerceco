import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';

class CustomSubmitRaisedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CustomSubmitRaisedButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ).addPaddingOnly(right: 48, left: 48, top: 16, bottom: 16),
            color: Color(0xFFFFCC33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: onPressed)
        .addPaddingAll(8);
  }
}
