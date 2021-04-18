import 'dart:async';

import '../Constants/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtility {
  bool dialogIsShow = false;

  showDialogWithButtons(
      {BuildContext context,
      String title,
      String msg,
      Function funOfOk,
      Function funOfCancel,
      bool showCancel = false}) async {
    List<Widget> listOfFloats = [
      FlatButton(
        child: new Text(
          "Ok",
          style: TextStyle(color: Colors.red),
        ),
        onPressed: () {
          funOfOk();
          dialogIsShow = false;
          Navigator.of(context).pop();
        },
      ),
    ];
    if (showCancel) {
      listOfFloats.add(FlatButton(
        child: new Text(
          "Cancel",
          style: TextStyle(color: Colors.red),
        ),
        onPressed: () {
          funOfCancel();
          dialogIsShow = false;
          Navigator.of(context).pop();
        },
      ));
    }
    dialogIsShow = true;
    await showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(msg),
          actions: listOfFloats,
        );
      },
    );
  }

  Future<void> showWaitingDialog(BuildContext cxt, {String msg}) {
    dialogIsShow = true;
    return showDialog<void>(
      context: cxt,
      barrierDismissible: false,
      builder: (BuildContext cxt) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            content: Row(
              children: <Widget>[
                CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.deepOrangeAccent),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    8,
                  ),
                ),
                Text(msg ?? "loading ...") //if messege == null set looding
              ],
            ),
          ),
        );
      },
    );
  }

  hideDialog(BuildContext context) {
    if (dialogIsShow) {
      // hide Dialog
      Navigator.of(context).pop();
    }
  }

  showDialogFor2Seconds({
    BuildContext context,
    String title,
    String msg,
  }) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });
        return Dialog(
          backgroundColor: Colors.transparent.withOpacity(0),
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(
                'assets/confirmed.png',
              ),
              Text(
                '${msg}',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.LightYellow),
              ),
            ],
          ),
        );
      },
    );
  }
}
