import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/base/base_theme.dart';

class DarkTheme extends BaseTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  ColorScheme get colorScheme => _colorScheme;

  ColorScheme get _colorScheme {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbb86fc),
      onPrimary: Color(0xff120e14),
      primaryContainer: Color(0xff6200ee),
      onPrimaryContainer: Color(0xffefdfff),
      secondary: Color(0xff03dac6),
      onSecondary: Color(0xff041413),
      secondaryContainer: Color(0xff003e3e),
      onSecondaryContainer: Color(0xffdfe9e9),
      tertiary: Color(0xff03dac6),
      onTertiary: Color(0xff041413),
      tertiaryContainer: Color(0xff005047),
      onTertiaryContainer: Color(0xffdfecea),
      error: Color(0xffcf6679),
      onError: Color(0xff140c0d),
      errorContainer: Color(0xffb1384e),
      onErrorContainer: Color(0xfffbe8ec),
      background: Color(0xff19161c),
      onBackground: Color(0xffececed),
      surface: Color(0xff19161c),
      onSurface: Color(0xffececed),
      surfaceVariant: Color(0xff3f3a46),
      onSurfaceVariant: Color(0xffe0e0e1),
      outline: Color(0xff76767d),
      outlineVariant: Color(0xff2c2c2e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfffbf8fe),
      onInverseSurface: Color(0xff131313),
      inversePrimary: Color(0xff5f4876),
      surfaceTint: Color(0xffbb86fc),
    );
  }
}
