import 'package:flutter/material.dart';

import '../ui/localization/Language.dart';

Widget profileRedButton({String text, bool right = true, Function fun}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
    child: RaisedButton(
      shape: right
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            )
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
      disabledColor: Colors.red,
      color: Colors.red,
      colorBrightness: Brightness.dark,
      onPressed: fun,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            text ?? Language.myLanguage().editProfile,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          text == null
              ? Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 26,
                )
              : SizedBox()
        ],
      ),
    ),
  );
}
