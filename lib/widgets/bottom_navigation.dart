import 'package:flutter/material.dart';

import '../pages/home_provider.dart';
import '../ui/localization/Language.dart';

BottomNavigationBar myBottomNavigationBar(
    {ProviderOfHome providerOfHome, TabController controller}) {
  return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: text(Language.myLanguage().categories),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),
          title: text(Language.myLanguage().offers),

//          title: Text(Language.myLanguage().offers),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sync),
          title: text(Language.myLanguage().orderHistory),
//
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: text(Language.myLanguage().favourites),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: text(Language.myLanguage().shoppingCart),
        ),
      ],
      currentIndex: ProviderOfHome.getIndex(),
      selectedItemColor: Color(0xff1b5e20),
      onTap: (selectedIndex) {
        providerOfHome.setIndex(selectedIndex);
      },
      backgroundColor: Colors.white,
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      unselectedItemColor: Colors.grey,
//    unselectedFontSize: 10,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.shifting);
}

Widget text(String s) {
  return SizedBox(
    child: AnimatedSwitcher(
        duration: const Duration(seconds: 2),
        child: Text(
          s,
          key: UniqueKey(),
        )),
    height: 25,
  );
}
