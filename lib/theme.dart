import 'package:flutter/material.dart';

ThemeData learnTheme = ThemeData.from(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff006064),
    brightness: Brightness.dark,
  ),
).copyWith(
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
    ),
  ),
);
