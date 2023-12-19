import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';

class DarkTheme {
  static ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(color: darkScaffoldColor),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.blue,
    ),
    cardColor: darkBackgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: darkBackgroundColor,
    ),
    scaffoldBackgroundColor: darkScaffoldColor,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
