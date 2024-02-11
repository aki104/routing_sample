import 'package:first_sample/ui/bottom_bar/01/bottombar_screen.dart';
import 'package:first_sample/ui/login/01/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../bottom_bar/01/app_navigation_bar_screen.dart';
import '../../home/01/home_screen.dart';

class Root01 extends ConsumerStatefulWidget {
  const Root01({Key? key}) : super(key: key);

  static String rootName = 'root';
  static String rootPath = '/root';

  @override
  ConsumerState<Root01> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<Root01> {
  @override
  void initState() {
    final root = ref.read(rootProvider);
    Future(() async {
      if (!mounted) return;
      if (root == 0) {
        context.go(Login01.rootPath);
      } else if (root == 1) {
        context.go(Home01.rootPath);
      } else {
        context.go(Login01.rootPath);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(),
            Text('loading')
          ],
        ),
      ),
    );
  }
}

final rootProvider = StateProvider((ref) => 0);