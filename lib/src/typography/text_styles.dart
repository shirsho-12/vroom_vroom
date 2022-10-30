import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vroom_vroom/app_ui.dart';

/// VroomVroom Text Style Definitions
class VroomVroomTextStyle {
  static String get fontFamily => "Inter";

  static const _baseTextStyle = TextStyle(
    package: 'app_ui',
    fontFamily: 'Inter',
    color: VroomVroomColors.black,
    fontWeight: VroomVroomFontWeight.regular,
  );

  static TextStyle get title {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: VroomVroomFontWeight.bold,
      // color: VroomVroomColors.darkBlue,
    );
  }

  static TextStyle get inputText {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: VroomVroomFontWeight.semiBold,
    );
  }

  static TextStyle get importantText {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: VroomVroomFontWeight.medium,
    );
  }

  static TextStyle get subHeading {
    return _baseTextStyle.copyWith(
      fontSize: 10,
      fontWeight: VroomVroomFontWeight.regular,
    );
  }

  static TextStyle get smallLabel {
    return _baseTextStyle.copyWith(
      fontSize: 8,
      fontWeight: VroomVroomFontWeight.regular,
    );
  }

  /// Caption Text Style
  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: VroomVroomFontWeight.regular,
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: VroomVroomFontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: VroomVroomFontWeight.medium,
    );
  }

  // /// Headline 1 Text Style
  // static TextStyle get headline1 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 56,
  //     fontWeight: VroomVroomFontWeight.medium,
  //   );
  // }

  // /// Headline 2 Text Style
  // static TextStyle get headline2 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 30,
  //     fontWeight: VroomVroomFontWeight.regular,
  //   );
  // }

  // /// Headline 3 Text Style
  // static TextStyle get headline3 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 28,
  //     fontWeight: VroomVroomFontWeight.regular,
  //   );
  // }

  // /// Headline 4 Text Style
  // static TextStyle get headline4 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 22,
  //     fontWeight: VroomVroomFontWeight.bold,
  //   );
  // }

  // /// Headline 5 Text Style
  // static TextStyle get headline5 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 20,
  //     fontWeight: VroomVroomFontWeight.medium,
  //   );
  // }

  // /// Headline 6 Text Style
  // static TextStyle get headline6 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 22,
  //     fontWeight: VroomVroomFontWeight.bold,
  //   );
  // }

  // /// Subtitle 1 Text Style
  // static TextStyle get subtitle1 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 16,
  //     fontWeight: VroomVroomFontWeight.bold,
  //   );
  // }

  // /// Subtitle 2 Text Style
  // static TextStyle get subtitle2 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 14,
  //     fontWeight: VroomVroomFontWeight.bold,
  //   );
  // }

  // /// Body Text 1 Text Style
  // static TextStyle get bodyText1 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 18,
  //     fontWeight: VroomVroomFontWeight.medium,
  //   );
  // }

  // /// Body Text 2 Text Style (the default)
  // static TextStyle get bodyText2 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 16,
  //     fontWeight: VroomVroomFontWeight.regular,
  //   );
  // }

}
