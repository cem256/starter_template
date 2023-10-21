import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/base/base_theme.dart';

final class LightTheme extends BaseTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  ColorScheme get colorScheme => _colorScheme;

  ColorScheme get _colorScheme {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6200ee),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbb86fc),
      onPrimaryContainer: Color(0xff100c14),
      secondary: Color(0xff018786),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa4f1ef),
      onSecondaryContainer: Color(0xff0e1414),
      tertiary: Color(0xff03dac6),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffcefaf8),
      onTertiaryContainer: Color(0xff111414),
      error: Color(0xffb00020),
      onError: Color(0xffffffff),
      errorContainer: Color(0xfffcd8df),
      onErrorContainer: Color(0xff141213),
      background: Color(0xfffaf8fe),
      onBackground: Color(0xff090909),
      surface: Color(0xfffaf8fe),
      onSurface: Color(0xff090909),
      surfaceVariant: Color(0xffe6e0ee),
      onSurfaceVariant: Color(0xff121112),
      outline: Color(0xff7c7c7c),
      outlineVariant: Color(0xffc8c8c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff131017),
      onInverseSurface: Color(0xfff5f5f5),
      inversePrimary: Color(0xffda99ff),
      surfaceTint: Color(0xff6200ee),
    );
  }
}
