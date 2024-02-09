import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '01_go_router/root/router_provider.dart';
import 'key/scaffold_key.dart';

///GoRouter使用時
class App01 extends ConsumerStatefulWidget {
  const App01({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return App01State();
  }
}

class App01State extends ConsumerState<App01> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      builder: (context, child) {
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1), child: child!);
      },
      scaffoldMessengerKey: ScaffoldKey.scaffoldMessengerKey,
      routerConfig: goRouter,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}

///AutoRoute使用時
class App02 extends ConsumerStatefulWidget {
  const App02({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return App02State();
  }

}

class App02State extends ConsumerState<App02> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      builder: (context, child) {
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1), child: child!);
      },
      scaffoldMessengerKey: ScaffoldKey.scaffoldMessengerKey,
      routerConfig: goRouter,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}