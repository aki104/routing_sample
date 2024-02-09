import 'package:first_sample/ui/detail/01/detail_screen.dart';
import 'package:first_sample/ui/home/01/home_screen.dart';
import 'package:first_sample/ui/setting/01/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../key/navigation_key.dart';
import '../../ui/bottom_bar/01/app_navigation_bar_screen.dart';
import '../../ui/detail/01/detail2_screen.dart';
import '../../ui/list/01/list_screen.dart';
import '../../ui/login/01/login_screen.dart';
import '../../ui/root/01/root_screen.dart';
import '../../ui/splash/01/splash_screen.dart';
import 'root_navigation_observer.dart';

final goRouter = GoRouter(
  navigatorKey: NavigationKey.rootNavigationKey,
  observers: [RootNavigatorObserver()],
  initialLocation: '/',
  routes: [
    GoRoute(
      path: Splash01.rootPath,
      name: Splash01.rootName,
      pageBuilder: (context, state) {
        return MaterialPage(
            key: state.pageKey, name: state.name, child: const Splash01());
      },
    ),
    GoRoute(
        path: Root01.rootPath,
        name: Root01.rootName,
        pageBuilder: (context, state) {
          return MaterialPage(
              key: state.pageKey, name: state.name, child: const Root01());
        },
        routes: [
          StatefulShellRoute.indexedStack(
              parentNavigatorKey: NavigationKey.rootNavigationKey,
              builder: (context, state, navigationShell) {
                return AppNavigationBar01(
                  navigationShell: navigationShell,
                );
              },
              branches: [
                // ホームブランチ
                StatefulShellBranch(
                  navigatorKey: NavigationKey.homeNavigatorKey,
                  routes: [
                    GoRoute(
                      path: Home01.rootName,
                      pageBuilder: (context, state) => NoTransitionPage(
                        key: state.pageKey,
                        child: const Home01(),
                      ),
                      routes: [
                        GoRoute(
                            parentNavigatorKey: NavigationKey.homeNavigatorKey,
                            path: Detail01.rootName,
                            pageBuilder: (context, state) {
                              return const MaterialPage(child: Detail01());
                            },
                            routes: [
                              GoRoute(
                                parentNavigatorKey:
                                    NavigationKey.homeNavigatorKey,
                                path: Detail201.rootName,
                                pageBuilder: (context, state) {
                                  return const MaterialPage(child: Detail201());
                                },
                              )
                            ]),
                        GoRoute(
                          parentNavigatorKey: NavigationKey.rootNavigationKey,
                          path: 'rootDetail',
                          pageBuilder: (context, state) {
                            return const MaterialPage(child: Detail01());
                          },
                        )
                      ],
                    ),
                  ],
                ),
                // リストブランチ
                StatefulShellBranch(
                  navigatorKey: NavigationKey.listNavigatorKey,
                  routes: [
                    GoRoute(
                      path: List01.rootName,
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: List01());
                      },
                    ),
                  ],
                ),
                // 設定ブランチ
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: 'setting',
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: Setting01());
                      },
                    ),
                  ],
                ),
              ]),
          GoRoute(
            path: Login01.rootName,
            name: Login01.rootName,
            pageBuilder: (context, state) {
              return MaterialPage(
                  key: state.pageKey, name: state.name, child: const Login01());
            },
          ),
        ]),
  ],
);


void route(String value, {RouteType type = RouteType.name}) {
  switch (type) {
    case RouteType.name:
      goRouter.goNamed(value);
    case RouteType.path:
      goRouter.go(value);
    case RouteType.push:
      goRouter.push(value);
  }
}


enum RouteType { push, path, name }

