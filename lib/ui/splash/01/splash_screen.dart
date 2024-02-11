import 'package:first_sample/ui/home/01/home_screen.dart';
import 'package:first_sample/ui/login/01/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../root/01/root_screen.dart';


class Splash01 extends ConsumerStatefulWidget {
  const Splash01({super.key});
  static String rootName = '/';
  static String rootPath = '/';

  @override
  ConsumerState<Splash01> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<Splash01> {
  @override
  void initState() {
    Future(() async {
      if (!mounted) return;
      // context.goNamed(Root01.rootName);
      context.go(Root01.rootPath);
      // context.go(Home01.rootPath);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CupertinoActivityIndicator(),
            Text('loading')
          ],
        ),
      ),
    );
  }
}
