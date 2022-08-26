import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'product/constants/string_constants.dart';

import 'core/manager/language/language_manager.dart';
import 'core/manager/route/app_router.gr.dart';
import 'core/manager/theme/theme_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: LanguageManager.instance.path,
      fallbackLocale: LanguageManager.instance.en,
      child: {{project_name.pascalCase()}}(),
    ),
  );
}

class {{project_name.pascalCase()}} extends StatelessWidget {
  {{project_name.pascalCase()}}({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // app name
      title: StringConstants.title,

      //theme
      themeMode : ThemeMode.system,
      theme: ThemeManager.instance.lightTheme,
      darkTheme : ThemeManager.instance.darkTheme,

      // localization
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      // routing
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
