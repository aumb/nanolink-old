import 'package:flutter/material.dart';
import 'package:nanolink_app/resources/colors/app_colors.dart';

class AppTheme {
  static final dark = ThemeData(
    visualDensity: VisualDensity.standard,
    dividerColor: Colors.white70,
    indicatorColor: AppColors.colorsDark.accentColor,
    dialogBackgroundColor: AppColors.colorsDark.backgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: AppColors.colorsDark.backgroundColor,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.colorsDark.backgroundColor,
      iconTheme: IconThemeData(
        color: AppColors.colorsDark.white87,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.colorsDark.accentColor,
    ),
    primarySwatch: _darkSwatch,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: _darkSwatch,
      accentColor: AppColors.colorsDark.accentColor,
      brightness: Brightness.dark,
      cardColor: AppColors.colorsDark.cardColor,
      backgroundColor: AppColors.colorsDark.backgroundColor,
    ),
    cardColor: AppColors.colorsDark.cardColor,
    canvasColor: AppColors.colorsDark.accentColor,
    scaffoldBackgroundColor: AppColors.colorsDark.backgroundColor,
    backgroundColor: AppColors.colorsDark.backgroundColor,
    hintColor: Colors.white38,
    iconTheme: IconThemeData(
      size: 16,
      color: AppColors.colorsDark.accentColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: Colors.white38,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.colorsDark.accentColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.colorsDark.backgroundColor,
        ),
      ),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.colorsDark.accentColor,
      ),
    ),
  );

  static final light = ThemeData(
    visualDensity: VisualDensity.standard,
    dividerColor: Colors.black87,
    indicatorColor: AppColors.colorsLight.accentColor,
    dialogBackgroundColor: AppColors.colorsLight.backgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: AppColors.colorsLight.backgroundColor,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.colorsLight.backgroundColor,
      iconTheme: IconThemeData(
        color: AppColors.colorsLight.white87,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.colorsLight.accentColor,
    ),
    primarySwatch: _lightSwatch,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: _lightSwatch,
      accentColor: AppColors.colorsLight.accentColor,
      cardColor: AppColors.colorsLight.cardColor,
      backgroundColor: AppColors.colorsLight.backgroundColor,
    ),
    cardColor: AppColors.colorsLight.cardColor,
    canvasColor: AppColors.colorsLight.accentColor,
    scaffoldBackgroundColor: AppColors.colorsLight.backgroundColor,
    backgroundColor: AppColors.colorsLight.backgroundColor,
    hintColor: Colors.black38,
    iconTheme: IconThemeData(
      size: 16,
      color: AppColors.colorsLight.accentColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: Colors.black38,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.colorsLight.accentColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.colorsLight.backgroundColor,
        ),
      ),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.colorsLight.accentColor,
      ),
    ),
  );

  static final _darkSwatch = MaterialColor(
    0xFF242729,
    <int, Color>{
      50: AppColors.colorsDark.cardColor,
      100: AppColors.colorsDark.cardColor,
      200: AppColors.colorsDark.cardColor,
      300: AppColors.colorsDark.cardColor,
      400: AppColors.colorsDark.cardColor,
      500: AppColors.colorsDark.backgroundColor,
      600: AppColors.colorsDark.backgroundColor,
      700: AppColors.colorsDark.backgroundColor,
      800: AppColors.colorsDark.backgroundColor,
      900: AppColors.colorsDark.backgroundColor,
    },
  );

  static final _lightSwatch = MaterialColor(
    0xFFf4f7fa,
    <int, Color>{
      50: AppColors.colorsLight.cardColor,
      100: AppColors.colorsLight.cardColor,
      200: AppColors.colorsLight.cardColor,
      300: AppColors.colorsLight.cardColor,
      400: AppColors.colorsLight.cardColor,
      500: AppColors.colorsLight.backgroundColor,
      600: AppColors.colorsLight.backgroundColor,
      700: AppColors.colorsLight.backgroundColor,
      800: AppColors.colorsLight.backgroundColor,
      900: AppColors.colorsLight.backgroundColor,
    },
  );
}
