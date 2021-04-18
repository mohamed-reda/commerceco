import 'package:flutter/material.dart';

bool isChange = true;

FloatingActionButton floatingButton(dynamic fun,
    {text, IconData icon, Color color, bool mini = true}) {
  return FloatingActionButton(
    heroTag: '${icon != null ? icon.toString() : text}',
    backgroundColor: Color(0xff1b5e20).withOpacity(.6),
    elevation: 0,
    focusElevation: 0,
    highlightElevation: 0.00000001,
    hoverElevation: 0,

    autofocus: true,
//    hoverColor: Colors.transparent,
//    focusColor: Colors.transparent,
//    foregroundColor: Colors.transparent,
    isExtended: true,
    mini: mini,
//    splashColor: Colors.red,
//    hoverColor: Colors.red,
//    foregroundColor: Colors.red,
    child: icon == null
        ? AnimatedSwitcher(
            key: UniqueKey(),
            duration: const Duration(seconds: 1),
//            transitionBuilder: (Widget child, Animation<double> animation) {
////        animation=Animation<double>();
//              return ScaleTransition(child: child, scale: animation);
//            },

            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                text,
                key: UniqueKey(),
                style: TextStyle(
                  fontSize: 26,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          )
        :
//      icon,
        AnimatedSwitcher(
            key: UniqueKey(),
//      switchInCurve: Curves.easeIn,
//      switchOutCurve: Curves.easeOut,
            duration: const Duration(seconds: 2),
//      transitionBuilder: (Widget child, Animation<double> animation) {
////        animation=Animation<double>();
//        return ScaleTransition(child: child, scale: animation);
//      },
            child: Icon(
              icon,
              color: color,
              size: 28,
            )),
    onPressed: () {
      isChange = !isChange;
      fun();
    },
  );
}
