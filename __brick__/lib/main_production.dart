import 'package:{{project_name.snakeCase()}}/app/environment/production_environment.dart';
import 'package:{{project_name.snakeCase()}}/app/view/app.dart';
import 'package:{{project_name.snakeCase()}}/bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new, environment: ProductionEnvironment());
}
