import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  String projectName = context.vars["project_name"];
  projectName = projectName.snakeCase;

  final List<String> foldersToRemove = [
    "$projectName/lib/",
    "$projectName/test/",
    "$projectName/pubspec.yaml",
    "$projectName/analysis_options.yaml",
    "$projectName/.gitignore",
  ];

  final List<Map<String, String>> filesToCopy = [
    {"source": ".vscode", "destination": "$projectName/"},
    {"source": "environment", "destination": "$projectName/"},
    {"source": "lib", "destination": "$projectName/"},
    {"source": "assets", "destination": "$projectName/"},
    {"source": "scripts", "destination": "$projectName/"},
    {"source": "pubspec.yaml", "destination": "$projectName/"},
    {"source": "analysis_options.yaml", "destination": "$projectName/"},
    {"source": "l10n.yaml", "destination": "$projectName/"},
    {"source": ".gitignore", "destination": "$projectName/"},
  ];

  await _copyFiles(context, foldersToRemove, filesToCopy);
  await _runFlutterPubGet(context, projectName);
  await _runBuildRunnerScript(context, projectName);
}

Future<void> _copyFiles(
    HookContext context, List<String> foldersToRemove, List<Map<String, String>> filesToCopy) async {
  final copyFileProgress = context.logger.progress("Copying required files");

  for (String folder in foldersToRemove) {
    await Process.run("rm", ["-rf", folder]);
  }

  List<Future<ProcessResult>> copyFutures = [];
  for (var fileMap in filesToCopy) {
    copyFutures.add(Process.run("mv", [fileMap["source"]!, fileMap["destination"]!]));
  }

  final result = await Future.wait<ProcessResult>(copyFutures);

  if (result.every((element) => element.exitCode == 0)) {
    copyFileProgress.complete("Files copied successfully!");
  } else {
    copyFileProgress.fail(result.firstWhere((element) => element.exitCode != 0).stderr.toString());
  }
}

Future<void> _runFlutterPubGet(HookContext context, String projectName) async {
  final flutterPubGetProgress = context.logger.progress("Running pub get script");
  final result = await Process.start("sh", ["scripts/pub_get.sh"], workingDirectory: projectName);

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("Pub get script successfully executed!");
  } else {
    flutterPubGetProgress.complete("An error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runBuildRunnerScript(HookContext context, String projectName) async {
  final buildRunnerProgress = context.logger.progress("Running build runner script");
  final result = await Process.start("sh", ["scripts/build_runner.sh"], workingDirectory: projectName);

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    buildRunnerProgress.complete("Build runner script successfully executed!");
  } else {
    buildRunnerProgress.complete("An error occurred on build runner script ${result.stderr.toString()}");
    exit(exitCode);
  }
}
