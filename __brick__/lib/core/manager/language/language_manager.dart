import 'package:flutter/material.dart';

import '../../constants/asset_constants.dart';

class LanguageManager {
  final en = const Locale("en", "US");
  final tr = const Locale("tr", "TR");

  final path = AssetConstants.translations;

  List<Locale> get supportedLocales => [en, tr];
}
