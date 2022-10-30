// import 'package:flutter/material.dart';
// import 'package:vroom_vroom/app_ui.dart';

// const _smallTextScaleFactor = 0.80;
// const _largeTextScaleFactor = 1.20;

// /// Namespace for the VroomVroom [ThemeData].
// class VroomVroomTheme {
//   /// Standard `ThemeData` for VroomVroom UI.
//   static ThemeData get standard {
//     return ThemeData(
//       colorScheme:
//           ColorScheme.fromSwatch(accentColor: VroomVroomColors.primary),
//       appBarTheme: _appBarTheme,
//       elevatedButtonTheme: _elevatedButtonTheme,
//       outlinedButtonTheme: _outlinedButtonTheme,
//       textTheme: _textTheme,
//       dialogBackgroundColor: VroomVroomColors.whiteBackground,
//       dialogTheme: _dialogTheme,
//       tooltipTheme: _tooltipTheme,
//       bottomSheetTheme: _bottomSheetTheme,
//       tabBarTheme: _tabBarTheme,
//       dividerTheme: _dividerTheme,
//     );
//   }

//   /// `ThemeData` for VroomVroom UI for small screens.
//   static ThemeData get small {
//     return standard.copyWith(textTheme: _smallTextTheme);
//   }

//   /// `ThemeData` for VroomVroom UI for medium screens.
//   static ThemeData get medium {
//     return standard.copyWith(textTheme: _smallTextTheme);
//   }

//   /// `ThemeData` for VroomVroom UI for large screens.
//   static ThemeData get large {
//     return standard.copyWith(textTheme: _largeTextTheme);
//   }

//   static TextTheme get _textTheme {
//     return TextTheme(
//       headline1: VroomVroomTextStyle.headline1,
//       headline2: VroomVroomTextStyle.headline2,
//       headline3: VroomVroomTextStyle.headline3,
//       headline4: VroomVroomTextStyle.headline4,
//       headline5: VroomVroomTextStyle.headline5,
//       headline6: VroomVroomTextStyle.headline6,
//       subtitle1: VroomVroomTextStyle.subtitle1,
//       subtitle2: VroomVroomTextStyle.subtitle2,
//       bodyText1: VroomVroomTextStyle.bodyText1,
//       bodyText2: VroomVroomTextStyle.bodyText2,
//       caption: VroomVroomTextStyle.caption,
//       overline: VroomVroomTextStyle.overline,
//       button: VroomVroomTextStyle.button,
//     );
//   }

//   static TextTheme get _smallTextTheme {
//     return TextTheme(
//       headline1: VroomVroomTextStyle.headline1.copyWith(
//         fontSize: _textTheme.headline1!.fontSize! * _smallTextScaleFactor,
//       ),
//       headline2: VroomVroomTextStyle.headline2.copyWith(
//         fontSize: _textTheme.headline2!.fontSize! * _smallTextScaleFactor,
//       ),
//       headline3: VroomVroomTextStyle.headline3.copyWith(
//         fontSize: _textTheme.headline3!.fontSize! * _smallTextScaleFactor,
//       ),
//       headline4: VroomVroomTextStyle.headline4.copyWith(
//         fontSize: _textTheme.headline4!.fontSize! * _smallTextScaleFactor,
//       ),
//       headline5: VroomVroomTextStyle.headline5.copyWith(
//         fontSize: _textTheme.headline5!.fontSize! * _smallTextScaleFactor,
//       ),
//       headline6: VroomVroomTextStyle.headline6.copyWith(
//         fontSize: _textTheme.headline6!.fontSize! * _smallTextScaleFactor,
//       ),
//       subtitle1: VroomVroomTextStyle.subtitle1.copyWith(
//         fontSize: _textTheme.subtitle1!.fontSize! * _smallTextScaleFactor,
//       ),
//       subtitle2: VroomVroomTextStyle.subtitle2.copyWith(
//         fontSize: _textTheme.subtitle2!.fontSize! * _smallTextScaleFactor,
//       ),
//       bodyText1: VroomVroomTextStyle.bodyText1.copyWith(
//         fontSize: _textTheme.bodyText1!.fontSize! * _smallTextScaleFactor,
//       ),
//       bodyText2: VroomVroomTextStyle.bodyText2.copyWith(
//         fontSize: _textTheme.bodyText2!.fontSize! * _smallTextScaleFactor,
//       ),
//       caption: VroomVroomTextStyle.caption.copyWith(
//         fontSize: _textTheme.caption!.fontSize! * _smallTextScaleFactor,
//       ),
//       overline: VroomVroomTextStyle.overline.copyWith(
//         fontSize: _textTheme.overline!.fontSize! * _smallTextScaleFactor,
//       ),
//       button: VroomVroomTextStyle.button.copyWith(
//         fontSize: _textTheme.button!.fontSize! * _smallTextScaleFactor,
//       ),
//     );
//   }

//   static TextTheme get _largeTextTheme {
//     return TextTheme(
//       headline1: VroomVroomTextStyle.headline1.copyWith(
//         fontSize: _textTheme.headline1!.fontSize! * _largeTextScaleFactor,
//       ),
//       headline2: VroomVroomTextStyle.headline2.copyWith(
//         fontSize: _textTheme.headline2!.fontSize! * _largeTextScaleFactor,
//       ),
//       headline3: VroomVroomTextStyle.headline3.copyWith(
//         fontSize: _textTheme.headline3!.fontSize! * _largeTextScaleFactor,
//       ),
//       headline4: VroomVroomTextStyle.headline4.copyWith(
//         fontSize: _textTheme.headline4!.fontSize! * _largeTextScaleFactor,
//       ),
//       headline5: VroomVroomTextStyle.headline5.copyWith(
//         fontSize: _textTheme.headline5!.fontSize! * _largeTextScaleFactor,
//       ),
//       headline6: VroomVroomTextStyle.headline6.copyWith(
//         fontSize: _textTheme.headline6!.fontSize! * _largeTextScaleFactor,
//       ),
//       subtitle1: VroomVroomTextStyle.subtitle1.copyWith(
//         fontSize: _textTheme.subtitle1!.fontSize! * _largeTextScaleFactor,
//       ),
//       subtitle2: VroomVroomTextStyle.subtitle2.copyWith(
//         fontSize: _textTheme.subtitle2!.fontSize! * _largeTextScaleFactor,
//       ),
//       bodyText1: VroomVroomTextStyle.bodyText1.copyWith(
//         fontSize: _textTheme.bodyText1!.fontSize! * _largeTextScaleFactor,
//       ),
//       bodyText2: VroomVroomTextStyle.bodyText2.copyWith(
//         fontSize: _textTheme.bodyText2!.fontSize! * _largeTextScaleFactor,
//       ),
//       caption: VroomVroomTextStyle.caption.copyWith(
//         fontSize: _textTheme.caption!.fontSize! * _largeTextScaleFactor,
//       ),
//       overline: VroomVroomTextStyle.overline.copyWith(
//         fontSize: _textTheme.overline!.fontSize! * _largeTextScaleFactor,
//       ),
//       button: VroomVroomTextStyle.button.copyWith(
//         fontSize: _textTheme.button!.fontSize! * _largeTextScaleFactor,
//       ),
//     );
//   }

//   static AppBarTheme get _appBarTheme {
//     return const AppBarTheme(color: VroomVroomColors.primary);
//   }

//   static ElevatedButtonThemeData get _elevatedButtonTheme {
//     return ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         elevation: 0,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//         ),
//         primary: VroomVroomColors.primary,
//         fixedSize: const Size(208, 54),
//       ),
//     );
//   }

//   static OutlinedButtonThemeData get _outlinedButtonTheme {
//     return OutlinedButtonThemeData(
//       style: OutlinedButton.styleFrom(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//         ),
//         side: const BorderSide(color: VroomVroomColors.white, width: 2),
//         primary: VroomVroomColors.white,
//         fixedSize: const Size(208, 54),
//       ),
//     );
//   }

//   static TooltipThemeData get _tooltipTheme {
//     return const TooltipThemeData(
//       decoration: BoxDecoration(
//         color: VroomVroomColors.charcoal,
//         borderRadius: BorderRadius.all(Radius.circular(5)),
//       ),
//       padding: EdgeInsets.all(10),
//       textStyle: TextStyle(color: VroomVroomColors.white),
//     );
//   }

//   static DialogTheme get _dialogTheme {
//     return DialogTheme(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//     );
//   }

//   static BottomSheetThemeData get _bottomSheetTheme {
//     return const BottomSheetThemeData(
//       backgroundColor: VroomVroomColors.whiteBackground,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//       ),
//     );
//   }

//   static TabBarTheme get _tabBarTheme {
//     return const TabBarTheme(
//       indicator: UnderlineTabIndicator(
//         borderSide: BorderSide(
//           width: 2,
//           color: VroomVroomColors.primary,
//         ),
//       ),
//       labelColor: VroomVroomColors.primary,
//       unselectedLabelColor: VroomVroomColors.black25,
//       indicatorSize: TabBarIndicatorSize.tab,
//     );
//   }

//   static DividerThemeData get _dividerTheme {
//     return const DividerThemeData(
//       space: 0,
//       thickness: 1,
//       color: VroomVroomColors.black25,
//     );
//   }
// }
