import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar01 extends StatelessWidget {
  const AppNavigationBar01({
    super.key,
    required this.navigationShell,
  });


  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(
              color: Colors.amberAccent
            )),
          ),
          child: BottomNavigationBar(
            currentIndex: navigationShell.currentIndex,// currentIndex: navigationShell.currentIndexは、現在のインデックスを取得。
            items: const [
              // ボトムナビゲーションバーのアイテム。
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'リスト'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
            ],
            onTap: _onTap,
          ),
        ),
      ),
    );
  }

  // アイテムをタップ時にアイテムのインデックスを取得して、そのインデックスに対応するブランチにナビゲートする。
  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
  Future<bool> _willPopCallback() async {
    return false;
  }
}