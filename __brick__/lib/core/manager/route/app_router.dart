import 'package:auto_route/annotations.dart';

import '../../../features/home/view/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, initial: true),
    // TODO: Add your routes here
  ],
)
class $AppRouter {}
