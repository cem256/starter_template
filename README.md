# Starter Template

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A Flutter starter app that includes support for an HTTP client, themes, routing, localization, and dependency injection.

## Compatibility

Tested on Flutter 3.27.3

## Brick Uses:

- [dio](https://pub.dev/packages/dio) as an HTTP client
- [auto_route](https://pub.dev/packages/auto_route) for routing
- [get_it](https://pub.dev/packages/get_it) for dependency injection
- [logger](https://pub.dev/packages/logger) as logging utility
- [envied](https://pub.dev/packages/envied) for secure handling of environment variables
- [flutter_gen](https://pub.dev/packages/flutter_gen) for asset generation
- [very_good_analysis](https://pub.dev/packages/very_good_analysis) for lint rules

## Project Structure

- "app" folder holds files specific to this particular application.
- "core" folder contains application-agnostic code that can be reused in other projects.
- "feature" folder represents the app's feature set.

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.

```sh
dart pub global activate mason_cli
```

Add starter_template to your library

```sh
mason add starter_template
```

Generate your brick

```sh
mason make starter_template
```

## Warning ⚠️

Ensure the environment/ folder is included in your .gitignore to protect sensitive configuration

## Variables ✨

| Variable       | Description                 | Default                | Type     |
| -------------- | --------------------------- | ---------------------- | -------- |
| `project_name` | Project Name                | Starter Template       | `string` |
| `description`  | Project description         | A new Flutter project. | `string` |
| `organization` | Organization of the project | com.example            | `string` |

## Output 📦

```sh
📦lib
 ┣ 📂app
 ┃ ┣ 📂constants
 ┃ ┃ ┗ 📜string_constants.dart
 ┃ ┣ 📂environment
 ┃ ┃ ┣ 📜app_environment.dart
 ┃ ┃ ┣ 📜development_environment.dart
 ┃ ┃ ┣ 📜development_environment.g.dart
 ┃ ┃ ┣ 📜production_environment.dart
 ┃ ┃ ┗ 📜production_environment.g.dart
 ┃ ┣ 📂l10n
 ┃ ┃ ┣ 📂arb
 ┃ ┃ ┃ ┣ 📜app_en.arb
 ┃ ┃ ┃ ┣ 📜app_tr.arb
 ┃ ┃ ┃ ┗ 📜untranslated_translations.json
 ┃ ┃ ┗ 📜l10n.dart
 ┃ ┣ 📂router
 ┃ ┃ ┣ 📜app_router.dart
 ┃ ┃ ┣ 📜app_router.gr.dart
 ┃ ┃ ┗ 📜custom_route_observer.dart
 ┃ ┣ 📂theme
 ┃ ┃ ┣ 📂base
 ┃ ┃ ┃ ┗ 📜base_theme.dart
 ┃ ┃ ┣ 📂dark
 ┃ ┃ ┃ ┗ 📜dark_theme.dart
 ┃ ┃ ┗ 📂light
 ┃ ┃ ┃ ┗ 📜light_theme.dart
 ┃ ┗ 📂view
 ┃ ┃ ┗ 📜app.dart
 ┣ 📂core
 ┃ ┣ 📂clients
 ┃ ┃ ┗ 📂network
 ┃ ┃ ┃ ┗ 📜network_client.dart
 ┃ ┣ 📂extensions
 ┃ ┃ ┗ 📜context_extensions.dart
 ┃ ┗ 📂utils
 ┃ ┃ ┣ 📂device_info
 ┃ ┃ ┃ ┗ 📜device_info_utils.dart
 ┃ ┃ ┣ 📂logger
 ┃ ┃ ┃ ┗ 📜logger_utils.dart
 ┃ ┃ ┗ 📂package_info
 ┃ ┃ ┃ ┗ 📜package_info_utils.dart
 ┣ 📂feature
 ┃ ┗ 📂home
 ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┣ 📂view
 ┃ ┃ ┃ ┗ 📜home_view.dart
 ┃ ┃ ┗ 📂view_model
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┣ 📂generated
 ┃ ┗ 📜assets.gen.dart
 ┣ 📜bootstrap.dart
 ┣ 📜locator.dart
 ┣ 📜main_development.dart
 ┗ 📜main_production.dart 
```

## Contributing

Contributions are always welcomed and appreciated!
