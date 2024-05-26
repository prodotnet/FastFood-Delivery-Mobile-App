import 'package:flutter/material.dart';
import 'package:fastfood_app/Pages/Themes/font_color.dart';
import 'package:fastfood_app/Pages/Themes/darkthemecolor.dart';

class Themepro with ChangeNotifier {
  ThemeData _themeDate = lightmode;

  ThemeData get themeData => _themeDate;

  bool get isDarkmode => _themeDate == darkmode;

  set themeData(ThemeData td) {
    _themeDate = td;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeDate == lightmode) {
      themeData = darkmode;
    } else {
      themeData = lightmode;
    }
  }
}
