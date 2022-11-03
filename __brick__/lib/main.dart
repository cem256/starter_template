import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/constants/string_constants.dart';
import 'core/manager/language/language_manager.dart';
import 'core/manager/route/app_router.gr.dart';
import 'core/manager/theme/theme_manager.dart';
import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: getIt<LanguageManager>().supportedLocales,
      path: getIt<LanguageManager>().path,
      fallbackLocale: getIt<LanguageManager>().en,
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
      theme: getIt<ThemeManager>().lightTheme,
      darkTheme: getIt<ThemeManager>().darkTheme,

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
