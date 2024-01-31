import 'package:first_sample/extention/context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/application/size.dart';
import '../../../util/key/navigation_key.dart';



class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});
  static String rootName = '/';
  static String rootPath = '/';

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    Future(() async {
      await appInitialize();
      if (!mounted) return;
      // context.goNamed(Root.rootName);
    });
    super.initState();
  }

  Future<void> appInitialize() async {
    SizeConfig.init(
        NavigationKey.currentContext?.screenSize); //画面サイズ取得
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.white,
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
