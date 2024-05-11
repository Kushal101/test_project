import 'package:flutter/material.dart';
import 'package:test_project/styles/textStyles.dart';


import 'colors.dart';

AppStyle $styles = AppStyle();


class AppStyle {
  AppStyle({Size? appSize}) {

    scale = 1;

  }

  late final double scale;

  /// The current theme colors for the app
  final AppColors colors = AppColors();

  /// Text styles
  late final Texts text = Texts(scale);

  /// Themes

}