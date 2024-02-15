import 'package:auto_route/auto_route.dart';
import 'package:first_sample/ui/home/02/home_screen.dart';
import 'package:first_sample/ui/login/02/login_screen.dart';
import 'package:first_sample/ui/setting/02/setting_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/bottom_bar/02/bottombar_screen.dart';
import '../../ui/list/02/list_screen.dart';
import '../../ui/splash/02/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    /// 後ほどbuild_runnerで生成したルートを記載する。
     AutoRoute(
         page: Splash02Route.page,
         initial: true,
       children: [
         AutoRoute(page: BottomBar02Route.page,initial: true, children: [
           AutoRoute(path: 'home',page: Home02Route.page),
           AutoRoute(path: 'list',page: List02Route.page),
           AutoRoute(path: 'setting',page: Setting02Route.page),

         ])
       ]
     ),
    AutoRoute(path: '/login', page: Login02Route.page),
  ];
}

final appRouterProvider = Provider((ref) => AppRouter());