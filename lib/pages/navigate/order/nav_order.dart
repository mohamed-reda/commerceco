//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//
//import '../../../pages/navigate/order/order_details.dart';
//import '../../../pages/navigate/order/order_provider.dart';
//import '../../../utils/delete_interface.dart';
//import '../../../widgets/items_of_order.dart';
//import '../ChildNotifierLang.dart';
//
//// ignore: must_be_immutable
//class Order extends DeleteListInterface with ChildNotifierLang {
//  bool b = true;
//  ProviderOfOrder providerOfPage;
//
//  void langNotify() {
////    notifyChild(providerOfPage);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    providerOfPage = Provider.of<ProviderOfOrder>(context);
//    return Expanded(
//      child: ListView.builder(
//        itemCount: 20,
////                                providerOfOrder.getList().length,
//        itemBuilder: (BuildContext context, num index) {
//          return GestureDetector(
//            child: itemOfOrder(
//              context, false,
////                            order: providerOfPage.getList()[index]
//            ),
//            onTap: () {
////                          Navigator.pushNamed(context, 'orderDetails');
////                          Navigator.pushNamed(context,OrderDetails.orderDetails);
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => OrderDetails()),
//              );
//            },
//          );
//        },
//      ),
//    );
////      Column(
////      children: <Widget>[
//
////        Expanded(
////                    flex: 1,
////                    child: ListView.builder(
////                      itemCount: 5,
//////                                providerOfOrder.getList().length,
////                      itemBuilder: (BuildContext context, num index) {
////                        return GestureDetector(
////                          child: itemOfWidget(context, false),
////                          onTap: () {
//////                          Navigator.pushNamed(context, 'orderDetails');
//////                          Navigator.pushNamed(context,OrderDetails.orderDetails);
////                            Navigator.push(
////                              context,
////                              MaterialPageRoute(
////                                  builder: (context) => OrderDetails()),
////                            );
////                          },
////                        );
//////                  providerOfFavorite.getList()[index].sdxsfds
////                      },
////                    ),
////                  )
////            ,
////        Expanded(
////                child: tryAgain(providerOfOrder.getOnlineList),
////              ),
////      ],
////    );
//  }
//}
