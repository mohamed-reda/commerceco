//import 'package:elgelany/utils/i_bottom_navigator_page.dart';
//import 'package:flutter/cupertino.dart';
//
//import 'get_data_from_internet.dart';
//import 'try_again.dart';
//
//Widget pages(IBottomPage page, Widget widget) {
//  IBottomPage bottomPage = page;
//  Widget showData = widget;
//  pageToNavigateTo() async {
//    await bottomPage.getOnlineList();
//    if (bottomPage.iState == 2) {
//      return showData;
//    }
//    return tryAgain(bottomPage.getOnlineList2);
//  }
//
//  return FutureBuilder<Widget>(
//    initialData: circularProgress(),
//    future: pageToNavigateTo(),
//    builder: (BuildContext context, AsyncSnapshot<Widget> asyncWidget) {
////      if (asyncWidget.hasData)
//      return asyncWidget.data;
////      else
////        return
//    },
//  );
//}
