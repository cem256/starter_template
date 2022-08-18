# Starter Template

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

Generates a new Flutter app with http client, theme, routing and localization features.

## Brick Uses: 

- [dio](https://pub.dev/packages/dio) as http client
- [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) as dio interceptor
- [Easy Localization](https://pub.dev/packages/easy_localization) for localization
- [Auto Route](https://pub.dev/packages/auto_route) for routing

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

| Variable           | Description                  | Default                   | Type     |
|--------------------|------------------------------|---------------------------|----------|
| `project_name`     | Project Name                 | Starter Template          | `string` |
| `description`      | Project description          | A new Flutter project.    | `string` |
| `organization`     | Organization of the project  | com.example               | `string` |


## Contributing

Contributions are always welcomed and appreciated!
