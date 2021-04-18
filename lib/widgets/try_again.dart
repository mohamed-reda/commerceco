import 'package:flutter/material.dart';

import '../Constants/my_colors.dart';
import '../ui/localization/Language.dart';

Widget tryAgain(dynamic function, {String message}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: Text(
            message ?? Language.myLanguage().tryAgain,
            key: UniqueKey(),
          )),
      Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: IconButton(
          icon: Icon(
            Icons.cached,
            size: 50,
            color: AppColors.DarkYellow,
          ),
          onPressed: () {
            function();
          },
        ),
      )
    ],
  );
}
