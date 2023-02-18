import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppTheme {
  //TODO: Customize your theme here
  ThemeData get darkTheme => ThemeData.dark();
  ThemeData get lightTheme => ThemeData.light();
}
