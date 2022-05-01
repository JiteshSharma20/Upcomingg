import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeChanger(this._themeData);
  bool initial = true;

  getTheme() => initial ? _themeData = getLightTheme() : _themeData;

  lightTheme() {
    initial = false;
    _themeData = getLightTheme();
    notifyListeners();
  }

  darkTheme() {
    initial = false;
    _themeData = getDarkTheme();
    notifyListeners();
  }

  getDarkTheme() {
    _themeData = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.black, toolbarTextStyle: TextTheme(
          headline6: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, color: Colors.white),
        ).bodyText2, titleTextStyle: TextTheme(
          headline6: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, color: Colors.white),
        ).headline6,
      ),
    );
    return _themeData;
  }

  getLightTheme() {
    _themeData = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white, toolbarTextStyle: TextTheme(
          headline6: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
        ).bodyText2, titleTextStyle: TextTheme(
          headline6: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
        ).headline6,
      ),
    );
    return _themeData;
  }
}
