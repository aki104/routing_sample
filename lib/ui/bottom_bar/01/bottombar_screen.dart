import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/01/home_screen.dart';
import '../../list/01/list_screen.dart';
import '../../setting/01/setting_screen.dart';
import '../state/notifier.dart';
import '../state/state.dart';


class BottomBar01 extends ConsumerWidget {
 const BottomBar01({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context, WidgetRef ref) {
  final state = ref.watch(bottomBaseProvider);
  final notifier = ref.watch(bottomBaseProvider.notifier);
  return WillPopScope(
   onWillPop: _willPopCallback,
   child: Stack(
    children: [
     Scaffold(
      body: IndexedStack(
       index: state.pageType.index,
       children: const [
        Home01(),
        // SizedBox.shrink(),
        List01(),
        // NotificationScreen(),
        Setting01(),
       ],
      ),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: state.pageType.index,
       onTap: (index) {
        notifier.changeTab(index);
       },
       items: _navigationItem(),
      ),
     ),
     // if (isLoading) const Loading()
    ],
   ),
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
 Future<bool> _willPopCallback() async {
  return false;
 }
}