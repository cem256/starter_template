abstract interface class AppEnvironment {
  static const String developmentPath = 'environment/.development.env';
  static const String productionPath = 'environment/.production.env';

  abstract final String baseUrl;
}
