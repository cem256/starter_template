import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeManager _instance = ThemeManager._init();
  static ThemeManager get instance => _instance;

  ThemeManager._init();

  //TODO: Customize your theme here
  ThemeData get darkTheme => ThemeData.dark();
  ThemeData get lightTheme => ThemeData.light();
}
