// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

/// Defines the color palette for the VroomVroom UI.
abstract class VroomVroomColors {
  // /// Black
  static const Color black = Color(0x202124);

  // /// Black 54% opacity
  // static const Color black54 = Color(0x8A000000);

  // /// Black 25% opacity
  // static const Color black25 = Color(0x40202124);

  // /// Gray b4b4b4
  // static const Color gray = Color(0xFFEBEBEB);

  // /// DarkGray
  // static const Color darkGray = Color(0xFFB4B4B4);

  // /// White
  // static const Color white = Color(0xFFFFFFFF);

  // /// WhiteBackground
  // static const Color whiteBackground = Color(0xFFE8EAED);

  // /// Transparent
  // static const Color transparent = Color(0x00000000);

  // /// Primary
  // static const Color primary = Color(0xFF0000FF);

  // /// Secondary
  // static const Color secondary = Color(0xFFFB5246);

  // /// Green
  // static const Color green = Color(0xFF3fBC5C);

  // /// Orange
  // static const Color orange = Color(0xFFFFBB00);

  // /// Charcoal
  // static const Color charcoal = Color(0xBF202124);

  // /// LightGray
  // static const Color lightGray = Color(0xFFE8EAED);

  static const Color darkBlue = Color(0x080b4aFF);
  static const Color blue = Color(0x018bf8FF);
  static const Color gray = Color(0xe8ecedFF);
  static const Color white = Color(0xf6f7f9FF);
  static const Color yellow = Color(0xf2c031FF);
  static const Color green = Color(0x038d85FF);
  static const Color red = Color(0xf16951FF);

  static const Color module = Color(0xF5F6F9FF);
  static const Color solidLine = Color(0xd9d9d9FF);
  static const Color dottedLine = Color(0x979797FF);
  static const Color outline = solidLine;
  static const Color subText = Color(0x555555FF);

  static MaterialColor getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;

    /// if [500] is the default color, there are at LEAST five
    /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
    /// divisor of 5 would mean [50] is a lightness of 1.0 or
    /// a color of #ffffff. A value of six would be near white
    /// but not quite.
    const lowDivisor = 6;

    /// if [500] is the default color, there are at LEAST four
    /// steps above [500]. A divisor of 4 would mean [900] is
    /// a lightness of 0.0 or color of #000000
    const highDivisor = 5;

    final lowStep = (1.0 - lightness) / lowDivisor;
    final highStep = lightness / highDivisor;

    return MaterialColor(color.value, {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      400: (hslColor.withLightness(lightness + lowStep)).toColor(),
      500: (hslColor.withLightness(lightness)).toColor(),
      600: (hslColor.withLightness(lightness - highStep)).toColor(),
      700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    });
  }

  //   static const Color buttonColor = lightGray;
  // static const Color iconColor = black;
  // static const Color searchBackground = lightGray;
}
