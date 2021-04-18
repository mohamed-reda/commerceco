import './pages/start.dart';
import 'package:flutter/material.dart';

import 'pages/auth/login/login.dart';

Route<dynamic> generateRoute({RouteSettings settings}) {
  switch (settings.name) {
    case '/':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartScreen(),
      );
    case Login.loginPage:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: Login(),
      );
    case 'MyHomePage':
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartScreen(),
      );
//    case 'ItemDetails':
//      var args = settings.arguments;
//      return _getPageRoute(
//        routeName: settings.name,
//        viewToShow: ItemDetails(
//          img: args,
//        ),
//      );

    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
