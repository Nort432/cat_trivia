import 'dart:developer';

import 'package:cat_trivia/src/features/fact/ui/page/fact_page.dart';
import 'package:cat_trivia/src/features/fact_history/ui/page/fact_history_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String factPage = '/fact';
  static const String historyPage = '/fact_history';

  static Route<dynamic> Function(RouteSettings) onGenerateRoute() {
    return (RouteSettings routeSettings) {
      log('routeSettings.name => "${routeSettings.name}"');

      switch (routeSettings.name) {
        case factPage:
          return routeSlow(const FactPage(), settings: routeSettings);

        case historyPage:
          return routeSlow(const FactHistoryPage(), settings: routeSettings);

        default:
          return routeSlow(const FactPage(), settings: routeSettings);
      }
    };
  }

  static PageRouteBuilder routeSlow(Widget widget, {RouteSettings? settings}) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => widget,
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    );
  }
}
