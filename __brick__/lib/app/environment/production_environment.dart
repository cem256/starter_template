import 'package:envied/envied.dart';
import 'package:{{project_name.snakeCase()}}/app/environment/app_environment.dart';

part 'production_environment.g.dart';

@Envied(obfuscate: true, path: AppEnvironment.productionPath)
final class ProductionEnvironment implements AppEnvironment {
  ProductionEnvironment();

  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _ProductionEnvironment.baseUrl;
}
