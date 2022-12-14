import 'dart:io';

import 'package:mason/mason.dart';
import 'package:recase/recase.dart';

Future<void> run(HookContext context) async {
  String projectName = context.vars["project_name"];
  projectName = projectName.snakeCase;

  await _copyFiles(context, projectName);
  await _runFlutterPubGet(context, projectName);
  await _runBuildRunnerScript(context, projectName);
  await _runLocalizationScript(context, projectName);
}

Future<void> _copyFiles(HookContext context, String projectName) async {
  final copyFileProgress = context.logger.progress("Copying required files");

  await Process.run("rm", [
    "-rf",
    "$projectName/lib/",
  ]);

  await Process.run("rm", [
    "-rf",
    "$projectName/test/widget_test.dart",
  ]);

  await Process.run("rm", [
    "-rf",
    "$projectName/pubspec.yaml",
  ]);

  final result = await Future.wait<ProcessResult>([
    Process.run("mv", [
      "lib",
      "$projectName/",
    ]),
    Process.run("mv", [
      "assets",
      "$projectName/",
    ]),
    Process.run("mv", [
      "scripts",
      "$projectName/",
    ]),
    Process.run("mv", [
      "pubspec.yaml",
      "$projectName/",
    ]),
  ]);

  if (result.every((element) => element.exitCode == 0)) {
    copyFileProgress.complete("Files copied successfully!");
  } else {
    copyFileProgress.fail(result.firstWhere((element) => element.exitCode != 0).stderr.toString());
  }
}

Future<void> _runFlutterPubGet(HookContext context, String projectName) async {
  final flutterPubGetProgress = context.logger.progress(
    "Running pub get script",
  );
  final result = await Process.start(
    "sh",
    ["scripts/pub_get.sh"],
    workingDirectory: projectName,
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("Pub get script successfully executed!");
  } else {
    flutterPubGetProgress.complete("An error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runBuildRunnerScript(HookContext context, String projectName) async {
  final buildRunnerProgress = context.logger.progress(
    "Running build runner script",
  );
  final result = await Process.start(
    "sh",
    ["scripts/build_runner.sh"],
    workingDirectory: projectName,
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    buildRunnerProgress.complete("Build runner script successfully executed!");
  } else {
    buildRunnerProgress.complete("An error occurred on build runner script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runLocalizationScript(HookContext context, String projectName) async {
  final localizationScriptProgress = context.logger.progress(
    "Running localization script",
  );
  final result = await Process.start(
    "sh",
    ["scripts/localization.sh"],
    workingDirectory: projectName,
  );

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    localizationScriptProgress.complete("Localization script successfully executed!");
    localizationScriptProgress.complete("Your project $projectName successfully created!");
  } else {
    localizationScriptProgress.complete("An error occurred on localization script ${result.stderr.toString()}");
    exit(exitCode);
  }
}
