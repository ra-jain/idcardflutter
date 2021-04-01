import 'package:flutter/material.dart';

ThemeData _light = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.red,
  accentColor: Colors.red,
  buttonTheme: ButtonThemeData(buttonColor: Colors.red),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.red, unselectedItemColor: Colors.black),
);
ThemeData _dark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.red,
  accentColor: Colors.red,
  buttonTheme: ButtonThemeData(buttonColor: Colors.red),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.red, unselectedItemColor: Colors.white),
);
