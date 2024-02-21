import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/constants/string_constants.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/l10n.dart';
import 'package:{{project_name.snakeCase()}}/app/router/app_router.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/dark/dark_theme.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/light/light_theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App Name
      title: StringConstants.appName,

      // Theme
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,

      // Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Routing
      routerConfig: _appRouter.config(),
    );
  }
}
