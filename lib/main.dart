import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';
import 'package:grade_calculator/pages/homepage.dart';
import 'package:grade_calculator/themes/dark_theme.dart';
import 'package:grade_calculator/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.themeData,
      darkTheme: DarkTheme.themeData,
      themeMode: ThemeMode.system,
      title: applicationName,
      home: const Homepage(),
    );
  }
}
