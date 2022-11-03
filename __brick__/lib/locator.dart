// Global service locator
import 'package:get_it/get_it.dart';

import 'core/manager/language/language_manager.dart';
import 'core/manager/network/network_manager.dart';
import 'core/manager/theme/theme_manager.dart';

final getIt = GetIt.instance;

void initServices() {
  // Managers
  getIt.registerLazySingleton(
    () => LanguageManager(),
  );

  getIt.registerLazySingleton(
    () => NetworkManager(),
  );

  getIt.registerLazySingleton(
    () => ThemeManager(),
  );
}
