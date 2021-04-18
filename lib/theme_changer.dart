import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
  );
  bool dark = false;

  ThemeChanger();

  ThemeData getTheme() => _themeData;

  changeTheme() {
    if (dark) {
      _themeData = ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Colors.black,
        ),
      );
    } else {
      _themeData = ThemeData(
        brightness: Brightness.dark,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
        ),
      );
    }
    dark = !dark;
    // print('Theme is : ${_themeData.brightness.toString()}');
    notifyListeners();
  }
}
