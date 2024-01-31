
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/screen/splash/splash_screen.dart';
import '../util/key/navigation_key.dart';
import 'root_navigation_observer.dart';

  final goRouter = GoRouter(
      navigatorKey: NavigationKey.navigationKey,
      observers: [RootNavigatorObserver()],
      initialLocation: '/',
      routes: [
        GoRoute(
            path: SplashScreen.rootPath,
            name: SplashScreen.rootName,
            pageBuilder: (context, state) {
              return MaterialPage(
                  key: state.pageKey,
                  name: state.name,
                  child: const SplashScreen()
              );
            },

        ),
        // GoRoute(
        //     path: Root.rootPath,
        //     name: Root.rootName,
        //     pageBuilder: (context, state) {
        //       return MaterialPage(
        //           key: state.pageKey,
        //           name: state.name,
        //           child: const Root()
        //       );
        //     },
        //     routes: [
        //       GoRoute(
        //           path: AttendanceHistoryScreen.rootPath,
        //           name: AttendanceHistoryScreen.rootName,
        //           pageBuilder: (context, state) {
        //             return MaterialPage(
        //                 key: state.pageKey,
        //                 name: state.name,
        //                 child: const AttendanceHistoryScreen()
        //             );
        //           }),
        //       GoRoute(
        //           path: SettingScreen.rootPath,
        //           name: SettingScreen.rootName,
        //           pageBuilder: (context, state) {
        //             return MaterialPage(
        //                 key: state.pageKey,
        //                 name: state.name,
        //                 child: const SettingScreen()
        //             );
        //           }),
        //     ]
        // ),
      ],
    );
  // }

  void route(String name) {
    // goRouter.go(path);
    goRouter.goNamed(name);
  }
// }



enum RootName {
  splashScreen(name: '/', path: '/'),
  root(name: 'root', path: '/root'),
  attendanceHistoryScreen(name: 'attendanceHistory', path: 'root/attendanceHistory'),
  setting(name: 'setting', path: 'root/setting');

  const RootName({
    required this.name,
    required this.path
});

final String name;
final String path;
}





