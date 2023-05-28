import 'package:flutter/material.dart';

abstract class BaseTheme {
  Brightness get brightness;
  ColorScheme get colorScheme;

  ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      //TODO: Customize widgets here
      typography: Typography.material2021(),
    );
  }
}
