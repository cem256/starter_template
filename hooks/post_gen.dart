import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  await _copyFiles(context);
  await _runFlutterPubGet(context);
  await _runBuildRunnerScript(context);
  await _runLocalizationScript(context);
}

Future<void> _copyFiles(HookContext context) async {
  final copyFileProgress = context.logger.progress("Copying required files");

  await Process.run("rm", [
    "-rf",
    "{{project_name.snakeCase()}}/lib/",
  ]);

  await Process.run("rm", [
    "-rf",
    "{{project_name.snakeCase()}}/test/widget_test.dart",
  ]);

  await Process.run("rm", [
    "-rf",
    "{{project_name.snakeCase()}}/pubspec.yaml",
  ]);

  final result = await Future.wait<ProcessResult>([
    Process.run("mv", [
      "lib",
      "{{project_name.snakeCase()}}/",
    ]),
    Process.run("mv", [
      "assets",
      "{{project_name.snakeCase()}}/",
    ]),
    Process.run("mv", [
      "scripts",
      "{{project_name.snakeCase()}}/",
    ]),
    Process.run("mv", [
      "pubspec.yaml",
      "{{project_name.snakeCase()}}/",
    ]),
  ]);

  if (result.every((element) => element.exitCode == 0)) {
    copyFileProgress.complete("Files copied successfully!");
  } else {
    copyFileProgress.fail(result.firstWhere((element) => element.exitCode != 0).stderr.toString());
  }
}

Future<void> _runFlutterPubGet(HookContext context) async {
  final flutterPubGetProgress = context.logger.progress(
    "Running pub get script",
  );
  final result = await Process.start(
    "sh",
    ["scripts/pub_get.sh"],
    workingDirectory: "{{project_name.snakeCase()}}",
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("Pub get script successfully executed!");
  } else {
    flutterPubGetProgress.complete("An error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runBuildRunnerScript(HookContext context) async {
  final buildRunnerProgress = context.logger.progress(
    "Running build runner script",
  );
  final result = await Process.start(
    "sh",
    ["scripts/build_runner.sh"],
    workingDirectory: "{{project_name.snakeCase()}}",
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    buildRunnerProgress.complete("Build runner script successfully executed!");
  } else {
    buildRunnerProgress.complete("An error occurred on build runner script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runLocalizationScript(HookContext context) async {
  final localizationScriptProgress = context.logger.progress(
    "Running localization script",
  );
  final result = await Process.start(
    "sh",
    ["scripts/localization.sh"],
    workingDirectory: "{{project_name.snakeCase()}}",
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    localizationScriptProgress.complete("Localization script successfully executed!");
    localizationScriptProgress.complete("Your project {{project_name.snakeCase()}} successfully created!");
  } else {
    localizationScriptProgress.complete("An error occurred on localization script ${result.stderr.toString()}");
    exit(exitCode);
  }
}
