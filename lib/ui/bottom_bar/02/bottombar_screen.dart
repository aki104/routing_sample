import 'package:auto_route/auto_route.dart';
import 'package:first_sample/ui/home/02/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../02_auto_router/root/app_router.dart';
import '../../home/01/home_screen.dart';
import '../../list/01/list_screen.dart';
import '../../list/02/list_screen.dart';
import '../../setting/01/setting_screen.dart';
import '../../setting/02/setting_screen.dart';
import '../state/notifier.dart';
import '../state/state.dart';

@RoutePage()
class BottomBar02Page extends ConsumerWidget {
 const BottomBar02Page({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context, WidgetRef ref) {
  final state = ref.watch(bottomBaseProvider);
  final notifier = ref.watch(bottomBaseProvider.notifier);
  return AutoTabsRouter(
   routes: const [
    Home02Route(),
    List02Route(),
    Setting02Route(),
   ],
   builder: (context, child) {
    final tabsRouter = context.tabsRouter;
    return Scaffold(
     body: child,
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: state.pageType.index,
      onTap: (index) {
       notifier.changeTab(index);
      },
      items: _navigationItem(),
     ),
    );
   },

  );
 }
 List<BottomNavigationBarItem> _navigationItem() {
  return [
   ...List.generate(BottomPageType.values.length, (index) {
    final item = BottomPageType.values[index];
    return BottomNavigationBarItem(
     icon: item.icon,
     label: item.name,
    );
   })
  ];
 }

}