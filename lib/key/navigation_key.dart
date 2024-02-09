import 'package:flutter/material.dart';

class NavigationKey{
  const NavigationKey._();

  static GlobalKey<NavigatorState> rootNavigationKey = GlobalKey<NavigatorState>();
  ///bottomBarでタブ内遷移するためのキー
  static GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
  static GlobalKey<NavigatorState> listNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'list');
  static GlobalKey<NavigatorState> settingNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'setting');
  static BuildContext? currentContext = rootNavigationKey.currentContext;
}