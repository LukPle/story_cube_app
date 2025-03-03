import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemes {
  AppThemes._();

  static final lightTheme = ThemeData(
    pageTransitionsTheme: pageTransitionsTheme,
    scaffoldBackgroundColor: AppColors.lightBackground,
    cardColor: AppColors.lightCard,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      surfaceTintColor: AppColors.lightBackground,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primaryColorLight,
      secondary: AppColors.secondaryColorLight,
    ),
    splashColor: Colors.transparent,
  );

  static final darkTheme = ThemeData(
    pageTransitionsTheme: pageTransitionsTheme,
    scaffoldBackgroundColor: AppColors.darkBackground,
    cardColor: AppColors.darkCard,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      surfaceTintColor: AppColors.darkBackground,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primaryColorDark,
      secondary: AppColors.secondaryColorDark,
    ),
    splashColor: Colors.transparent,
  );

  static const pageTransitionsTheme = PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );
}
