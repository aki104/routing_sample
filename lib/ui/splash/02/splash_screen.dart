import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:first_sample/02_auto_router/root/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Splash02Page extends ConsumerStatefulWidget {
  const Splash02Page({super.key});

  @override
  ConsumerState<Splash02Page> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<Splash02Page> {
  @override
  void initState() {
    print('splashInit');
    Future(() async {
      if (!mounted) return;
      context.router.push(const Login02Route());
      // context.goNamed(Root01.rootName);

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
            Text('splash')
          ],
        ),
      ),
    );
  }
}
