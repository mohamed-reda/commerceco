import 'package:commerceco/pages/auth/login/login.dart';
import 'package:commerceco/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../pages/home.dart';
import '../pages/home_provider.dart';
import '../pages/navigate/cart/cart_provider.dart';
import '../pages/navigate/cart/nav_cart.dart';
import '../pages/navigate/category/category_provider.dart';
import '../pages/navigate/category/nav_category.dart';
import '../pages/navigate/favorite/favorite_provider.dart';
import '../pages/navigate/favorite/nav_favorite.dart';
import '../router.dart';
import '../theme_changer.dart';
import 'auth/abdo/chage/change_password.dart';
import 'auth/abdo/forget/forget_password.dart';
import 'auth/register/register.dart';
import 'home.dart';
import 'item_details/item_details.dart';
import 'item_details/item_provider.dart';
import 'loading/loading.dart';
import 'navigate/cart/local_cart/local_cart_page.dart';
import 'navigate/cart/local_cart/provider_of_local_cart.dart';
import 'navigate/category/sub_category/sub_category.dart';
import 'navigate/offer/nav_offer.dart';
import 'navigate/offer/offer_provider.dart';
import 'navigate/order/order_details.dart';

/// This view holds all tabs & its models: home, vehicles, upcoming & latest launches, & company tabs.
class StartScreen extends StatelessWidget {
//  int _currentIndex = 0;
  static int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final theme = Provider.of<ThemeChanger>(context);
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Consumer<ThemeChanger>(
        builder: (context, model, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: theme.getTheme,
          // darkTheme: ThemeData.dark(),
          theme: model.getTheme(),

          // ThemeData(
          //   primarySwatch: Colors.yellow,
          // ),
          // theme: theme.getTheme(),
          home: Login(),
          routes: {
            '/Loading': (context) => Loading(),
            Login.loginPage: (context) => Login(),
//        'maps': (context) => UserLocation(),
            '/forget': (context) => ForgetPassword(),
            MyHomePage.myHomePage: (context) => MyHomePage(),
            Register.registerPage: (context) => Register(),
            '/SubCategory': (context) => SubCategory(),
            '/Profile': (context) => Profile(),
//        '/ItemDetail': (context) => ItemDetails(),
//        '/ItemsAfterSubCategory': (context) => ItemsAfterSubCategory(),
            OrderDetails.orderDetails: (context) => OrderDetails(),
            '/ChangePassword': (context) => ChangePassword(),
          },
        ),
      ),
    );
  }
}
