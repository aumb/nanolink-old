import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.primaryColor,
    required this.accentColor,
    required this.cardColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.labelPrimary,
    required this.labelSecondary,
    required this.white87,
    required this.white70,
  });

  final Color primaryColor;
  final Color accentColor;
  final Color cardColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final Color labelPrimary;
  final Color labelSecondary;
  final Color white87;
  final Color white70;

  static const colorsDark = AppColors(
    primaryColor: Color(0xFF0c0a55),
    accentColor: Color(0xFF1295f1),
    cardColor: Color(0xFF030414),
    secondaryColor: Color(0xFF030414),
    backgroundColor: Color(0xFF000000),
    labelSecondary: Color(0xFF0c0a55),
    labelPrimary: Color(0xFF000000),
    white87: Color.fromRGBO(255, 255, 255, 0.87),
    white70: Color.fromRGBO(255, 255, 255, 0.70),
  );

  static const colorsLight = AppColors(
    primaryColor: Color(0xFF0c0a55),
    accentColor: Color(0xFFa9a3f7),
    cardColor: Color(0xFFffffff),
    secondaryColor: Color(0xFF4c3eba),
    backgroundColor: Color(0xFFebeef8),
    labelSecondary: Color(0xFF39329b),
    labelPrimary: Color(0xFF6c6f75),
    white87: Color.fromRGBO(0, 0, 0, 0.87),
    white70: Color.fromRGBO(0, 0, 0, 0.70),
  );
}

extension CustomColorsExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;

    switch (brightness) {
      case Brightness.light:
        return AppColors.colorsLight;
      case Brightness.dark:
        return AppColors.colorsDark;
    }
  }
}
