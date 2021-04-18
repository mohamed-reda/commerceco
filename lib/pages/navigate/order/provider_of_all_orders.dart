//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//
//import 'all_orders.dart';
//
////as category provider
//class ProviderOfAllOrder extends ChangeNotifier {
//  TabController _tabController;
//  List<Widget> _listOfOrderPages = [
//    First(),
//    Second(),
//  ];
//
//  List<Widget> listOfOrdersPages() => _listOfOrderPages;
//
//  setTabController(TabController value) {
//    _tabController = value;
//  }
//
//  goTOTheIndexedTab(int index) {
////      _index = index;
//    _tabController.animateTo(index,
//        curve: Curves.linear, duration: Duration(milliseconds: 1500));
////    notifyListeners();
//  }
//
//  void notify() {
//    notifyListeners();
//  }
//
//  getOnlineList() {}
//
//  void disposeController() {
//    _tabController.dispose();
//  }
//}
