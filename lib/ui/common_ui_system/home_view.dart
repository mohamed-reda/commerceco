//import 'package:flutter/material.dart';
//
//import '../common_ui/base_widget.dart';
//
//class HomeView extends StatelessWidget {
//  const HomeView({Key key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return BaseWidget(
//      builder: (context, sizingInformation) {
//        return Scaffold(
//          body: Center(
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                Container(
//                  height: sizingInformation.orientation == Orientation.landscape
//                      ? 200
//                      : 150,
//                  margin: const EdgeInsets.all(50),
//                  color: Colors.blue,
//                  child: BaseWidget(
//                    builder: (context, sizingInfo) =>
//                        Text(sizingInfo.toString() + ' sss'),
//                  ),
//                ),
//                Text(sizingInformation.toString()),
//              ],
//            ),
//          ),
//        );
//      },
//    );
//  }
//}
