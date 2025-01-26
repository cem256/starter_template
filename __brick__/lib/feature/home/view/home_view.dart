import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/l10n.dart';
import 'package:{{project_name.snakeCase()}}/core/extensions/context_extensions.dart';
import 'package:{{project_name.snakeCase()}}/generated/assets.gen.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.flutter,
        ),
      ),
      body: Padding(
        padding: context.paddingAllDefault,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.flutter.image(),
          ],
        ),
      ),
    );
  }
}
