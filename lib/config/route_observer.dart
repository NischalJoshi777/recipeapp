import 'package:flutter/cupertino.dart';

class AnalyticsRouteObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    print(route.settings.name);
    print(previousRoute?.settings.name ?? "no previous screen");
  }
}
