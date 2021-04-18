//import 'package:elgelany/utils/i_bottom_navigator_page.dart';
//import 'package:elgelany/widgets/try_again.dart';
//import 'package:flutter/material.dart';
//import 'get_data_from_internet.dart';
//FutureBuilder builderOfList(IBottomPage providerOfPage, Expanded myWidget) {
//  return FutureBuilder(
//    future: providerOfPage.getOnlineList(),
//    builder: (context, snapshot) {
//      if (snapshot.connectionState == ConnectionState.done) {
//        if (snapshot.hasData) {
//          providerOfPage.resStr = snapshot.data.toString();
//          providerOfPage.convertTheData();
////          print('doneeeee ${providerOfPage.myList.length}');
//          if (providerOfPage.myList.length < 1) {
//            return tryAgain(() {
//              providerOfPage.getOnlineList();
//              snapshot.inState(ConnectionState.waiting);
//              providerOfPage.notify();
//            });
//          }
//          return myWidget;
//        } else {
//          return tryAgain(() {
//            providerOfPage.getOnlineList();
//            snapshot.inState(ConnectionState.waiting);
//            providerOfPage.notify();
//          });
//        }
//      } else {
//        return circularProgress();
//      }
//    },
//  );
//}
