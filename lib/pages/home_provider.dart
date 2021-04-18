import 'package:flutter/material.dart';

import '../main.dart';
import '../pages/navigate/cart/local_cart/local_cart_page.dart';
import '../pages/start.dart';
import '../ui/localization/Language.dart';
import 'auth/login/login.dart';
import 'navigate/category/nav_category.dart';
import 'navigate/favorite/nav_favorite.dart';
import 'navigate/offer/nav_offer.dart';
import 'navigate/order/all_orders.dart';

class ProviderOfHome extends ChangeNotifier {
//  static int currentIndex = 0;

//  static int get index => currentIndex;
  TabController _tabController;
  BuildContext _context;
  List<Widget> navigationClasses = [
    Categories(),
    Offers(),
//    Order(),
    AllOrders(),
    Favorite(),
//    ShoppingCart(),
    LocalCartPage(),
  ];

  // ignore: unnecessary_getters_setters
  BuildContext get context => _context;

  // ignore: unnecessary_getters_setters
  set context(BuildContext value) {
    _context = value;
  }

  ProviderOfHome();

  static getIndex() => StartScreen.currentIndex;

//  TabController get tabController => _tabController;

  setTabController(TabController value) {
    _tabController = value;
  }

  setIndex(int index) {
//    print('xxxxx  ${index}');
//    print('plllll  ${MyApp.isLoggedIn}');
    StartScreen.currentIndex = index;

    ///I should make it 1
    if (index > 4) {
      if ((MyApp.token == 'null' ||
          MyApp.token == null ||
          MyApp.token == '' ||
          MyApp.token.isEmpty)) {
//        print('llllll  ${MyApp.isLoggedIn}');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      } else {
//        print('tttoken: ${MyApp.token}');
        goTOTheIndexedTab();
      }
    } else {
      goTOTheIndexedTab();
    }
  }

  goTOTheIndexedTab() {
//      _index = index;
    _tabController.animateTo(StartScreen.currentIndex,
        curve: Curves.linear, duration: Duration(milliseconds: 1500));
    notifyListeners();
  }

  void notifyLang() {
//    navigationClasses[index].langNotify();
    Language.setLang(!MyApp.lang);
    notifyListeners();
  }
}
