import 'package:flutter/material.dart';
import 'package:jackpot_web/utilities/text_style.dart';

import 'color_style.dart';

class AppTheme {
  AppTheme._();

  static final TextTheme _textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium, 
    displaySmall: displaySmall, 
    headlineLarge: headlineLarge, 
    headlineMedium: headlineMedium, 
    headlineSmall: headlineSmall, 
  );

  static const ColorScheme _colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primaryWhite,
    onPrimary: primaryBlue,
    secondary: primaryWhite,
    onSecondary: primaryBlue,
    error: errorRed,
    onError: errorRed,
    background: backgroundColor,
    onBackground: whiteScale,
    surface: grayScale,
    onSurface: blackScale,
  );

  static final ThemeData regularTheme = ThemeData(
    fontFamily: 'Pretendard',
    textTheme: _textTheme,
    colorScheme: _colorScheme,
    focusColor: primaryBlue,
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryBlue,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: displayMedium.copyWith(color: whiteScale[100]),
    ),
    iconTheme: IconThemeData(
      color: whiteScale[100],
      size: 24,
    ),
  );
}
