
import 'package:flutter/material.dart';

extension ContextEx on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
}