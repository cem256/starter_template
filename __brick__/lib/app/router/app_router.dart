import 'package:auto_route/annotations.dart';

import 'package:{{project_name.snakeCase()}}/feature/home/view/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, initial: true),
    // TODO: Add routes here
  ],
)
class $AppRouter {}
