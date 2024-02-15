import 'package:first_sample/ui/bottom_bar/01/bottombar_screen.dart';
import 'package:first_sample/ui/login/01/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../bottom_bar/01/app_navigation_bar_screen.dart';
import '../../home/01/home_screen.dart';

class Root02Page extends ConsumerStatefulWidget {
  const Root02Page({Key? key}) : super(key: key);


  @override
  ConsumerState<Root02Page> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<Root02Page> {
  @override
  void initState() {
    final root = ref.read(rootProvider);
    Future(() async {
      if (!mounted) return;

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