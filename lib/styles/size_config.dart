import 'package:flutter/cupertino.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  static Brightness mediaQueryPlatformBrightness = Brightness.dark;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;
  static double _safeAreaHorizontal = 0;
  static double _safeAreaVertical = 0;
  static double safeBlockHorizontal = 0;
  static double safeBlockVertical = 0;
  static double viewInsets=0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    viewInsets=_mediaQueryData.viewInsets.bottom;
    mediaQueryPlatformBrightness = _mediaQueryData.platformBrightness;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}