import 'dart:ui' as ui;

import 'package:shared_preferences/shared_preferences.dart';

import '../../Constants/Constants.dart';
import '../../domain/domain_shared_preferences.dart';
import '../../main.dart';
import '../../utils/locator.dart';
import '../localization/AppResourcesAr.dart';
import '../localization/IAppResources.dart';
import 'AppResourcesEn.dart';

class Language {
//  static bool lang = false;
//  static bool lang;
//  static SharedPreferencesDomain prefs = locator<SharedPreferencesDomain>();
  static final AppResourcesEn en = AppResourcesEn();
  static final AppResourcesAr ar = AppResourcesAr();
//  static IAppResources localization;
//  SharedPreferencesDomain shared=;

  static IAppResources myLanguage() {
    if (MyApp.lang) {
      // if english language selected
      return en;
    } else // if arabic language selected
      return ar;
  }

  static Future<bool> getLang() async {
//    print(ui.window.runtimeType);
//    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      return locator<SharedPreferencesDomain>()
              .prefs
              .getBool(Constants.userLanguage) ??
          ui.window.locale.languageCode != 'ar';
    } catch (e) {
      return ui.window.locale.languageCode != 'ar';
    }
    // if null return true
  }

  static setLang(bool language) async {
    MyApp.lang = language;
    SharedPreferences shared = await SharedPreferences.getInstance();
    shared.setBool(Constants.userLanguage, language);
  }
}
