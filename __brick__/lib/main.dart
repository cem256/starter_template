import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/constants/string_constants.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/l10n.dart';
import 'package:{{project_name.snakeCase()}}/app/router/app_router.gr.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/dark/dark_theme.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/light/light_theme.dart';
import 'package:{{project_name.snakeCase()}}/injection.dart';

void main() {
  configureDependencies();
  runApp({{project_name.pascalCase()}}());
}

class {{project_name.pascalCase()}} extends StatelessWidget {
  {{project_name.pascalCase()}}({super.key});

  final appRouter = AppRouter();

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
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
