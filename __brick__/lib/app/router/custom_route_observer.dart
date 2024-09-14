// ignore_for_file: strict_raw_type

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/core/utils/logger/logger_utils.dart';

/// Custom route observer that logs all route changes
final class CustomRouteObserver extends AutoRouteObserver {
  CustomRouteObserver({
    this.logPush = true,
    this.logPop = true,
    this.logReplace = true,
    this.logRemove = true,
    this.logInitTab = true,
    this.logChangeTab = true,
  });
  final bool logPush;
  final bool logPop;
  final bool logReplace;
  final bool logRemove;
  final bool logInitTab;
  final bool logChangeTab;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (logPush) {
      LoggerUtils.instance.logInfo(
        '[AutoRoute] New route pushed: ${route.settings.name}, Previous route: ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (logPop) {
      LoggerUtils.instance.logInfo(
        '[AutoRoute] Route popped: ${route.settings.name}, Previous route: ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (logReplace) {
      LoggerUtils.instance.logInfo(
        '[AutoRoute] Route replaced: ${newRoute?.settings.name}, Old route: ${oldRoute?.settings.name}',
      );
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    if (logRemove) {
      LoggerUtils.instance.logInfo(
        '[AutoRoute] Route removed: ${route.settings.name}, Previous route: ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);
    if (logInitTab) {
      LoggerUtils.instance.logInfo(
        '[AutoRoute] Tab route initialized: ${route.name}, Previous tab route: ${previousRoute?.name}',
      );
    }
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);
    if (logChangeTab) {
      LoggerUtils.instance.logInfo(
        '[AutoRoute] Tab route changed: ${route.name}, Previous tab route: ${previousRoute.name}',
      );
    }
  }
}
