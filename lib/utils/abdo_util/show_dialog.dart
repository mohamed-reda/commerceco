import 'package:flutter/material.dart';

void showMaterialDialog(BuildContext context,
    {Widget content, Widget title, List<Widget> actions}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Material(
            child: content,
          ),
          title: title,
          actions: actions,
        );
      });
}
