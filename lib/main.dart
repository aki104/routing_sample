import 'package:first_sample/root/router_provider.dart';
import 'package:first_sample/util/key/scaffold_key.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('ja');

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  if (kReleaseMode) {
    //リリースモードではプリント無効
    debugPrint = (String? message, { int? wrapWidth }){};
  }
  runApp(const App());
}

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AppState();
  }

}

class AppState extends ConsumerState<App> {
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
