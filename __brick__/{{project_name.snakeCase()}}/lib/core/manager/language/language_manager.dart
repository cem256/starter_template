import 'package:flutter/material.dart';

import '../../../product/constants/asset_constants.dart';

class LanguageManager {
  static final LanguageManager _instance = LanguageManager._init();
  static LanguageManager get instance => _instance;

  LanguageManager._init();

  final en = const Locale("en", "US");
  final tr = const Locale("tr", "TR");

  final path = AssetConstants.translations;

  List<Locale> get supportedLocales => [en, tr];
}
