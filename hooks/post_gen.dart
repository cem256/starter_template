import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  await _runFlutterPubGet(context);
  await _runBuildRunner(context);
  await _runLocalizationScript(context);
}

Future<void> _runFlutterPubGet(HookContext context) async {
  final flutterPubGetProgress = context.logger.progress(
    'running "pub get script"',
  );
  final result = await Process.start(
    "sh",
    ["scripts/pub_get.sh"],
    workingDirectory: "{{project_name.snakeCase()}}",
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("pub get script successfully executed");
  } else {
    flutterPubGetProgress.complete("an error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runBuildRunner(HookContext context) async {
  final buildRunnerProgress = context.logger.progress(
    'running "build runner script"',
  );
  final result = await Process.start(
    "sh",
    ["scripts/build_runner.sh"],
    workingDirectory: "{{project_name.snakeCase()}}",
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    buildRunnerProgress.complete("build runner script successfully executed");
  } else {
    buildRunnerProgress.complete("an error occurred on build runner script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runLocalizationScript(HookContext context) async {
  final localizationScriptProgress = context.logger.progress(
    'running "localization script"',
  );
  final result = await Process.start(
    "sh",
    ["scripts/localization.sh"],
    workingDirectory: "{{project_name.snakeCase()}}",
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    localizationScriptProgress.complete("localization script successfully executed");
    localizationScriptProgress.complete("your project {{project_name.snakeCase()}} successfully created!");
  } else {
    localizationScriptProgress.complete("an error occurred on localization script ${result.stderr.toString()}");
    exit(exitCode);
  }
}
