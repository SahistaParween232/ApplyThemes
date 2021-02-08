import 'dart:async';

import 'package:flutter/material.dart';

ThemeData buildDarkTheme() {
  return ThemeData(
    fontFamily: 'OpenSans',
    primaryColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0, foregroundColor: Colors.white),
    brightness: Brightness.light,
    /*accentColor: config.Colors().mainColor(1),
    dividerColor: config.Colors().accentColor(0.1),
    focusColor: config.Colors().accentColor(1),
    hintColor: config.Colors().secondColor(1),
    textTheme: TextTheme(
      headline5: TextStyle(fontSize: 22.0, color: config.Colors().secondColor(1), height: 1.3),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: config.Colors().secondColor(1), height: 1.3),
      headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().secondColor(1), height: 1.3),
      headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1), height: 1.4),
      headline1: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w300, color: config.Colors().secondColor(1), height: 1.4),
      subtitle1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1), height: 1.3),
      headline6: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1), height: 1.3),
      bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: config.Colors().secondColor(1), height: 1.2),
      bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: config.Colors().secondColor(1), height: 1.3),
      caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: config.Colors().accentColor(1), height: 1.2),
    ),*/
  );
}

ThemeData buildLightTheme() {
  return ThemeData(
    fontFamily: 'OpenSans',
    primaryColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0, foregroundColor: Colors.white),
    brightness: Brightness.light,
    /*accentColor: config.Colors().mainColor(1),
    dividerColor: config.Colors().accentColor(0.1),
    focusColor: config.Colors().accentColor(1),
    hintColor: config.Colors().secondColor(1),
    textTheme: TextTheme(
      headline5: TextStyle(fontSize: 22.0, color: config.Colors().secondColor(1), height: 1.3),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: config.Colors().secondColor(1), height: 1.3),
      headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().secondColor(1), height: 1.3),
      headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1), height: 1.4),
      headline1: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w300, color: config.Colors().secondColor(1), height: 1.4),
      subtitle1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1), height: 1.3),
      headline6: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1), height: 1.3),
      bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: config.Colors().secondColor(1), height: 1.2),
      bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: config.Colors().secondColor(1), height: 1.3),
      caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: config.Colors().accentColor(1), height: 1.2),
    ),*/
  );
}

Color hexToColorConvert(String color) {
  try {
    return Color(
        int.parse(color.substring(1, 7), radix: 16) + 0xFF000000);
  } catch (e) {
    return Color(0xFFCCCCCC).withOpacity(1);
  }
}

final validateTheme = StreamTransformer<ThemeData, ThemeData>.fromHandlers(
    handleData: (isDarkTheme, sink) {
      //if(isDarkTheme)
  sink.add(buildDarkTheme());
});
