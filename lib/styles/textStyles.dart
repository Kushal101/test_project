import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stylekit.dart';

class Texts {
  Texts(this._scale);
  final double _scale;
  final TextStyle quickSand = GoogleFonts.quicksand();
final TextStyle avenir = GoogleFonts.averiaGruesaLibre();

  late final TextStyle quickSand700_24black_30 = _createFont(
    quickSand,
    weight: FontWeight.w700,
    sizePx: 24,
    color: $styles.colors.black,
    heightPx: 30,
  );
  late final TextStyle quickSand700_14white_17 = _createFont(
    quickSand,
    weight: FontWeight.w700,
    sizePx: 14,
    color: $styles.colors.white,
    heightPx: 17,
  );
  late final TextStyle quickSand400_14hex888888_19 = _createFont(
    quickSand,
    weight: FontWeight.w400,
    sizePx: 14,
    color: $styles.colors.hex888888,
    heightPx: 19,
  );
  late final TextStyle avenir400_25hexF3F1ED_34 = _createFont(
    quickSand,
    weight: FontWeight.w500,
    sizePx: 25,
    color: $styles.colors.hexF3F1ED,
    heightPx: 34,
  );
  late final TextStyle quickSand500_20hexF8615A_25 = _createFont(
    quickSand,
    weight: FontWeight.w500,
    sizePx: 20,
    color: $styles.colors.hexF8615A,
    heightPx: 25,
  );
  late final TextStyle quickSand700_14black_17 = _createFont(
    quickSand,
    weight: FontWeight.w700,
    sizePx: 14,
    color: $styles.colors.black,
    heightPx: 17,
  );
  late final TextStyle quickSand700_22black_27 = _createFont(
    quickSand,
    weight: FontWeight.w700,
    sizePx: 22,
    color: $styles.colors.black,
    heightPx: 27,
  );
  late final TextStyle quickSand500_18hex343434_22 = _createFont(
    quickSand,
    weight: FontWeight.w500,
    sizePx: 18,
    color: $styles.colors.hex343434,
    heightPx: 22,
  );
  late final TextStyle quickSand700_14hexF8615A_17 = _createFont(
    quickSand,
    weight: FontWeight.w700,
    sizePx: 14,
    color: $styles.colors.hexF8615A,
    heightPx: 17,
  );
  late final TextStyle quickSand400_14hex343434_12 = _createFont(
    quickSand,
    weight: FontWeight.w400,
    sizePx: 14,
    color: $styles.colors.hex343434,
    heightPx: 12,
  );
  TextStyle _createFont(TextStyle style,
      {required double sizePx,
        double? heightPx,
        double? spacingPc,
        FontWeight? weight,
        Color? color}) {
    double szpx = sizePx;
    szpx *= _scale;
    // double? hpx;
    // if (heightPx != null) {
    //   hpx = heightPx * _scale;
    // }
    return style.copyWith(
      fontSize: szpx,
      // height: heightPx != null ? (hpx! / sizePx) : style.height,
      letterSpacing: spacingPc != null ? sizePx * spacingPc * 0.01 : style.letterSpacing,
      fontWeight: weight,
      color: color,
    );
  }
}
