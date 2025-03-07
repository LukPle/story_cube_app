import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Background Colors for the Scaffold Widgets
  static const Color lightBackground = Color(0xffF1F1F1); // Hex: #F1F1F1
  static const Color darkBackground = Color(0xff141414); // Hex: #141414

  /// Background Colors for Tiles and Cards
  static const Color lightCard = Color(0xffFFFFFF); // Hex: #FFFFFF
  static const Color darkCard = Color(0xff2F2F2F); // Hex: #2F2F2F

  /// Primary and Secondary Color for Widgets and Components
  static const Color primaryColorLight = Color(0xff48525E); // Hex: #48525E
  static const Color secondaryColorLight = Color(0xffF6DFD7); // Hex: #F6DFD7
  static const Color accentColorLight = Color(0xff7A8843); // Hex: #7A8843
  static const Color primaryColorDark = Color(0xffEDDCD2); // Hex: #EDDCD2
  static const Color secondaryColorDark = Color(0xffD9AE84); // Hex: #D9AE84
  static const Color accentColorDark = Color(0xffE2FF71); // Hex: #E2FF71

  /// Success and Error Color
  static const Color success = Colors.green;
  static const Color error = Colors.red;
}


class ThemedColor {
  ThemedColor._();

  static Color getColor(BuildContext context, {required Color light, required Color dark}) {
    return Theme.of(context).brightness == Brightness.light ? light : dark;
  }

  static Color primaryColor(BuildContext context) {
    return getColor(context, light: AppColors.primaryColorLight, dark: AppColors.primaryColorDark);
  }

  static Color secondaryColor(BuildContext context) {
    return getColor(context, light: AppColors.secondaryColorLight, dark: AppColors.secondaryColorDark);
  }

  static Color accentColor(BuildContext context) {
    return getColor(context, light: AppColors.accentColorLight, dark: AppColors.accentColorDark);
  }

  static Color backgroundColor(BuildContext context) {
    return getColor(context, light: AppColors.lightBackground, dark: AppColors.darkBackground);
  }

  static Color cardColor(BuildContext context) {
    return getColor(context, light: AppColors.lightCard, dark: AppColors.darkCard);
  }
}
