import 'package:flutter/material.dart';

class ScaffoldKey{
  const ScaffoldKey._();

  ///ドロワーなど表示する際に必要
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ///スナックバーなど表示する際に使用
  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
}