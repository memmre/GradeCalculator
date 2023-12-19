import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';

class LightTheme {
  static ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(color: lightScaffoldColor),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.blue,
    ),
    cardColor: lightBackgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: lightBackgroundColor,
    ),
    scaffoldBackgroundColor: lightScaffoldColor,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
