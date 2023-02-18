# Starter Template

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A Flutter starter app that includes support for an HTTP client, themes, routing, localization, and dependency injection.

## Brick Uses:

- [dio](https://pub.dev/packages/dio) as an HTTP client
- [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) as a dio interceptor
- [auto_route](https://pub.dev/packages/auto_route) for routing
- [get_it](https://pub.dev/packages/get_it) for dependency injection
- [injectable](https://pub.dev/packages/injectable) as a code generator for get_it
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

## Variables ✨

| Variable       | Description                 | Default                | Type     |
| -------------- | --------------------------- | ---------------------- | -------- |
| `project_name` | Project Name                | Starter Template       | `string` |
| `description`  | Project description         | A new Flutter project. | `string` |
| `organization` | Organization of the project | com.example            | `string` |

## Contributing

Contributions are always welcomed and appreciated!
