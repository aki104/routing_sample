import 'package:flutter/material.dart';

class SizeConfig {
  const SizeConfig._();

  ///基本となるデバイスサイズ（iphone12,13・13pro）
  static const baseWidth = 390.0;
  static const baseHeight = 844.0;
  static const baseWidthPix = 1170.0;
  static const baseHeightPix = 2532.0;

  ///基本となるアスペクト比
  static double baseAspectRatio = baseWidth/baseHeight; //0.46

  ///端末のWidth
  static double? width;
  ///端末のheight
  static double? height;

  ///比率(Width)
  static double ratioW = 1.0;

  ///比率(Height)
  static double ratioH = 1.0;

  ///比率(display)
  static double ratioD = 1.0;

  static void init(Size? size) {
    width = size?.width ?? baseWidth;
    height = size?.height ?? baseHeight;
    final deviceRatioW = size != null ? size.width/baseWidth : 1;
    final deviceRatioH = size != null ? size.height/baseHeight : 1;
    final deviceRatioD = size != null ? ((size.width/baseWidth)+(size.height/baseHeight))/2 : 1;
    ratioW = double.parse(deviceRatioW.toStringAsFixed(2));
    ratioH = double.parse(deviceRatioH.toStringAsFixed(2));
    ratioD = double.parse(deviceRatioD.toStringAsFixed(2));
  }
}

extension SizeExInt on int{
  double get w {
    return SizeConfig.ratioW*this;
  }
  double get h {
    return SizeConfig.ratioH*this;
  }
  double get d {
    return SizeConfig.ratioD*this;
  }
}

extension SizeExDouble on double{
  double get w {
    return SizeConfig.ratioW*this;
  }

  double get h {
    return SizeConfig.ratioH*this;
  }

  double get d {
    return SizeConfig.ratioD*this;
  }
}
