import 'package:flutter/material.dart';

const Color myPurple = Color(0xFFb200ff);

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: myPurple,
      brightness: Brightness.light,
    ),
  );

  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: myPurple,
      brightness: Brightness.dark,
    ),
  );
}
