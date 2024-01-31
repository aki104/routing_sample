import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rootNavigatorObserver = Provider<RootNavigatorObserver>((ref) {
  return RootNavigatorObserver();
});

class RootNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPush route: ${route.settings.name}');
    debugPrint('didPush previousRoute: ${previousRoute?.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPop route: ${route.settings.name}');
    debugPrint('didPop previousRoute:${previousRoute?.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didRemove route: ${route.settings.name}');
    debugPrint('didRemove previousRoute: ${previousRoute?.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint('didReplace route: ${newRoute?.settings.name}');
    debugPrint('didReplace previousRoute: ${oldRoute?.settings.name}');
  }
}