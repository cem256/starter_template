import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/locator.config.dart';

@InjectableInit()

/// [Locator] is responsible for locating and registering all the
/// services of the application.
abstract final class Locator {
  /// [GetIt] instance
  static final instance = GetIt.instance;

  /// Responsible for registering all the dependencies
  static Future<void> locateServices() async {
    instance.init();
  }
}
