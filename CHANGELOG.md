# 1.1.10
- bumped mason to v0.1.0-dev.59

# 1.1.9
- Migrated auto_route to v9.2.0
- Bumped very_good_analysis to v6.0.0 

# 1.1.8
- Migrated to flutter 3.22
- Added [logger](https://pub.dev/packages/logger) as a logging tool
- Added a custom navigatorObserver to track route changes

# 1.1.7
- Upgraded dependencies to the latest versions
- Added untranslated-messages-file parameter to l10n.yaml

# 1.1.6
- Removed /environment folder from .gitignore to resolve build_runner issues.

# 1.1.5
- Refactored post gen hook 

# 1.1.4
- Added output section to README.md

# 1.1.3
- Added multi-environment setup using [envied](https://pub.dev/packages/envied)
- Removed [injectable](https://pub.dev/packages/injectable) because it reduced the flexibility of the environment setup.

# 1.1.2
- Added package info utils
- Added device info utils

# 1.1.1
- Upgraded dependencies to the latest versions

# 1.1.0
- Upgraded dependencies to the latest versions
- Used Dart 3.0 class modifiers

# 1.0.9

- Added base theme for easier theme customization
- Upgraded dependencies to the latest versions
- Migrated to Dart 3.0

# 1.0.8

- Refactored project structure for improved organization and readability
- Switched to Flutter's default localization package (flutter_localizations) for simplified internationalization and localization
- Added code generation with Injectable for improved dependency injection and reduced boilerplate code

# 1.0.7

- Service locator added. [get_it](https://pub.dev/packages/get_it)
- Dependency versions bumped to latest versions.

# 1.0.6

- Minor change made to improve readability in hook files.

# 1.0.5

- Refactored hooks as suggested [#514](https://github.com/felangel/mason/issues/514)

# 1.0.4

- AutoRoute version bumped to 5.0.1

# 1.0.3

- Improved post and pre gen hooks for easier installation.
- Update README.md
