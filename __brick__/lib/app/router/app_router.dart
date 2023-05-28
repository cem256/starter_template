import 'package:auto_route/auto_route.dart';
import 'package:{{project_name.snakeCase()}}/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // TODO: Add routes here
        AutoRoute(initial: true, page: HomeRoute.page)
      ];
}
