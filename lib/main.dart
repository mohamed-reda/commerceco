import 'package:commerceco/pages/home.dart';
import 'package:commerceco/pages/home_provider.dart';
import 'package:commerceco/pages/item_details/item_details.dart';
import 'package:commerceco/pages/navigate/category/category_provider.dart';
import 'package:commerceco/pages/navigate/category/nav_category.dart';
import 'package:commerceco/pages/navigate/favorite/favorite_provider.dart';
import 'package:commerceco/pages/navigate/favorite/nav_favorite.dart';
import 'package:commerceco/pages/navigate/offer/nav_offer.dart';
import 'package:commerceco/pages/navigate/offer/offer_provider.dart';
import 'package:commerceco/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/item_details/item_provider.dart';
import 'pages/navigate/cart/cart_provider.dart';
import 'pages/navigate/cart/local_cart/local_cart_page.dart';
import 'pages/navigate/cart/local_cart/provider_of_local_cart.dart';
import 'pages/navigate/cart/nav_cart.dart';
import 'pages/start.dart';
import 'theme_changer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

//  locator.registerSingleton<AppModel>(AppModelImplementation(),
//      signalsReady: true);
//If you want it only portrait uncomment the next
//  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //fonts license uncomment the next
//  LicenseRegistry.addLicense(() async* {
//    final license = await rootBundle.loadString('google_fonts/OFL.txt');
//    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
//  });

  runApp(
//    DevicePreview(
////    enabled: !kReleaseMode,
//      builder: (context) =>
      MyApp()

//    ),
      );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
//  SharedPreferencesDomain shared;
  static bool lang = true;
  var key = UniqueKey();

  MyApp() {
    setupLocator();
  }

//  static UserData userData = null;
  static int userID;
  static String token;

//  GlobalTheme _globalTheme = LightTheme();

  @override
  Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//        statusBarColor: AppColors.LightYellow,
//        //its the top details
//        systemNavigationBarColor: AppColors.DarkYellow,
//        // bottom details like back button
//        systemNavigationBarDividerColor: Colors.blue,
//        statusBarIconBrightness: Brightness.dark,
//        statusBarBrightness: Brightness.dark,
//        systemNavigationBarIconBrightness: Brightness.dark));
//    FutureBuilder futureBuilder = FutureBuilder(
//      initialData: Loading(),
//      future: check(),
//      builder: (BuildContext context, AsyncSnapshot asyncWidget) {
//        if (asyncWidget.connectionState == ConnectionState.waiting) {
//          return Loading();
//        } else if (asyncWidget.connectionState == ConnectionState.done &&
//            asyncWidget.hasData) {
//          lang = asyncWidget.data;
//          return StartScreen();
//        } else {
//          return Loading();
//        }
//      },
//    );
    return MultiProvider(providers: [
      ChangeNotifierProvider<ProviderOfCategory>(
        create: (context) => ProviderOfCategory(),
        child: Categories(),
      ),
//      ChangeNotifierProvider<ProviderOfSubCategory>(
//        create: (context) => ProviderOfSubCategory(),
//        child: Categories(),
//      ),
      ChangeNotifierProvider<ProviderOfHome>(
        create: (context) => ProviderOfHome(),
        child: MyHomePage(),
      ),
      ChangeNotifierProvider<ProviderOfFavorite>(
        create: (context) => ProviderOfFavorite(),
        child: Favorite(),
      ),
//      ChangeNotifierProvider<ProviderOfOrder>(
//        create: (context) => ProviderOfOrder(),
//        child: Order(),
//      ),
      ChangeNotifierProvider<ProviderOfOffer>(
        create: (context) => ProviderOfOffer(),
        child: Offers(),
      ),
      ChangeNotifierProvider<ProviderOfItem>(
        create: (context) => ProviderOfItem(),
        child: ItemDetails(),
      ),
      ChangeNotifierProvider<ProviderOfCart>(
        create: (context) => ProviderOfCart(),
        child: ShoppingCart(),
      ),
      ChangeNotifierProvider<ProviderOfLocalCart>(
        create: (context) => ProviderOfLocalCart(),
        child: LocalCartPage(),
      ),
      ChangeNotifierProvider<ThemeChanger>(
        create: (context) => ThemeChanger(),
        child: StartScreen(),
      ),
//      ChangeNotifierProvider<ProviderOfAllOrder>(
//        create: (context) => ProviderOfAllOrder(),
//        child: AllOrders(),
//      ),
//      ChangeNotifierProvider<ItemsAfterSubCategoryProvider>(
//        create: (context) => ItemsAfterSubCategoryProvider(),
//        child: ItemsAfterSubCategory(),
//      ),
//
    ], child: StartScreen()
        // ItemsAfterSubCategory()
        );
  }

// Color _textColor(BuildContext context) {
//   if (NeumorphicTheme.isUsingDark(context) ?? false) {
//     return Colors.white;
//   } else {
//     return Colors.black;
//   }
// }

//  Future<bool> check() async {
////    lang = await
//    try {
//      token = shared.getUserToken();
//      userID = shared.getJustUserID();
////      print('iddd1: $token');
////      print('iddd: $userID');
////    isLoggedIn = shared.isLoggedIn;
//
//    } catch (e) {
//      print(e.toString());
//    }
//    return Language.getLang();
////    Language.getLang().then((v) {
////      lang = v;
////    });
//
////    CheckLogIn.isLoggedInFun().then((v) {
////      isLoggedIn = v;
////    });
////    if (isLoggedIn) {
////      userData = locator<SharedPreferencesDomain>().getJustUser();
////    }
//  }
}
