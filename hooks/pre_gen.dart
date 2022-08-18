import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress("Running 'flutter create'");

  try {
    await _createFlutterApp(context);
    progress.complete("Flutter App created!");
  } catch (e) {
    progress.fail("Something went wrong while running 'flutter create' : $e");
  }
}

Future<ProcessResult> _createFlutterApp(HookContext context) async {
  return Process.run(
    "flutter",
    [
      "create",
      "{{project_name.snakeCase()}}",
      "--description",
      "{{description}}",
      "--org",
      "{{organization}}",
    ],
  );
}
