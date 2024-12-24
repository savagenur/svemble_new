import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static double? defaultSize;
  static Orientation? orientation;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getPropScreenWidth(double width) {
  double screenWidth = SizeConfig.screenWidth;
  return (width / 392.0) * screenWidth;
}

double getPropScreenHeight(double height) {
  double screenHeight = SizeConfig.screenHeight;
  return (height / 783) * screenHeight;
}
