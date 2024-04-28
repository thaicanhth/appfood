import 'package:appfood/themes/dark_mode.dart';
import 'package:appfood/themes/light_mode.dart';
import 'package:flutter/material.dart';
class ThemProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themData => _themeData;
  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
  void toogleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}