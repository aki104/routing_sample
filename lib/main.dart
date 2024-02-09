import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'constant/global.dart';

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
  if (flavor == 'go_route') {
    //go_router
    runApp(const ProviderScope(child: App01()));
  } else {
    //auto_router
    runApp(const ProviderScope(child: App02()));
  }

}


