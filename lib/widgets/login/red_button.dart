import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RedButton extends StatelessWidget {
  String buttonName;
  dynamic fun;
  Color color;

  RedButton({this.buttonName, this.fun, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
//        decoration: box??null,
      width: MediaQuery.of(context).size.width * .8,
      height: 50,
      child: RaisedButton(
        elevation: 0,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
            side: BorderSide(color: color ?? Colors.green)),
        color: color ?? Colors.transparent,
//      padding: EdgeInsets.fromLTRB(36, 9, 36, 9),
        onPressed: () {
          fun();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              buttonName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18 / (MediaQuery.of(context).textScaleFactor),
              ),
            ),
            new Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
