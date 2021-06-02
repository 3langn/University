import 'package:flutter/material.dart';

import 'color_theme.dart';

const themeColorAppbar = Color.fromRGBO(255, 209, 128, 1);

enum AppTheme {
  OrangeLight,
  OrangeDark,
}

final appThemeData = {
  AppTheme.OrangeLight: ThemeData(
    primaryColor: primaryOrange,
    accentColor: darkColor,
    colorScheme: ColorScheme.light(
      primary: primaryOrange,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  ),
  AppTheme.OrangeDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryDOrange,
    accentColor: darkColor,
    colorScheme: ColorScheme.dark(
      primary: primaryOrange,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  ),
};