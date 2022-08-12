# Starter Template

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A starter Flutter App with http client, theme, routing and localization features.

## Project Uses: 

- [dio](https://pub.dev/packages/dio) for http client
- [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) for dio interceptor
- [Easy Localization](https://pub.dev/packages/easy_localization) for localization
- [Auto Route](https://pub.dev/packages/auto_route) for routing

## How to use 🚀

🎯 First activate from https://pub.dev
```sh
dart pub global activate mason_cli
```

🚀 Then initialize mason your project on any folder by using:
```sh
mason init
```

Add starter_template to your library
```sh
mason add starter_template
```

Generate your brick
```sh
mason make starter_template --project_name "Sample Project" --organization "com.example"
```

## Variables ✨

| Variable               | Description                  | Default          | Type     |
|------------------------|------------------------------|------------------|----------|
| `project_name`         | Project Name                 | Starter Template | `string` |
| `organization`         | Organization of the project  | com.example      | `string` |
