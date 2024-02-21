import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/environment/app_environment.dart';
import 'package:{{project_name.snakeCase()}}/core/utils/device_info/device_info_utils.dart';
import 'package:{{project_name.snakeCase()}}/core/utils/package_info/package_info_utils.dart';
import 'package:{{project_name.snakeCase()}}/locator.dart';

Future<void> bootstrap({required FutureOr<Widget> Function() builder, required AppEnvironment environment}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // Initialize Locator and Utils
      await Future.wait([
        Locator.locateServices(environment: environment),
        PackageInfoUtils.init(),
        DeviceInfoUtils.init(),
      ]);

      runApp(await builder());
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
