import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xffFE7234),
    background: const Color(0xffe8e8e4),
  ),
  scaffoldBackgroundColor: const Color(0xffe8e8e4),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffe8e8e4),
  ),
  useMaterial3: true,
);
